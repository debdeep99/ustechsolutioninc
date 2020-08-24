from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse,  HttpResponseRedirect
from django.conf import settings
from django.views import View
from django.shortcuts import get_object_or_404
from teams.models import *
from django.views.decorators.csrf import csrf_exempt
import operator
import functools
from django.db.models import Q, Count
import datetime
from random import *

# ************************* CREATE  MATCH FIXTURE REQUEST ************************* #

def createMatchFixture():
    

    """
        Call api to get data
    """ 
    # for one match each - use this block only
    # Fetch Team LIST
    teamData = Team.objects.values_list('id',flat=True)
    teams=list(teamData)
    
    matches = fixtures(teams)
    
    heldOn = datetime.date.today() + datetime.timedelta(days=1)
    for f in matches:
        homeMatchBetween = tuple(zip(*[iter(f)] * 2))
        for teamId in homeMatchBetween:
            heldOn = heldOn + datetime.timedelta(days=1)
        
            MatchesObj=Matches.objects.filter(team_a_name=teamId[0],team_b_name=teamId[1])
            if len(MatchesObj) == 0:
                MatchesPersistObj = Matches.objects.create(team_a_name_id=teamId[0],team_b_name_id=teamId[1],held_on=heldOn)
                MatchesPersistObj.save()

    # if you want return matches
    reverse_teams = [list(x) for x in zip(teams[1::2], teams[::2])]
    reverse_teams = functools.reduce(operator.add, reverse_teams)  # swap team1 with team2, and so on ....

    # then run the fixtures again
    matches1 = fixtures(reverse_teams)

    for g in matches1:
        awayMatchBetween = tuple(zip(*[iter(g)] * 2))
        for teamId in awayMatchBetween:
            heldOn = heldOn + datetime.timedelta(days=1)
            
            MatchesObj=Matches.objects.filter(team_a_name=teamId[0],team_b_name=teamId[1])
            MatchesObj2=Matches.objects.filter(team_a_name=teamId[1],team_b_name=teamId[0])

            if len(MatchesObj)==0:
                MatchesPersistObj = Matches(team_a_name_id=teamId[0],team_b_name_id=teamId[1],held_on=heldOn)
                MatchesPersistObj.save()
            if len(MatchesObj)==1 and len(MatchesObj2)==0:
                MatchesPersistObj = Matches(team_a_name_id=teamId[1],team_b_name_id=teamId[0],held_on=heldOn)
                MatchesPersistObj.save()

    return 1


def fixtures(teams):


    """
        Make team List and also determine day off
    """ 
    if len(teams) % 2:
        teams.append('Day off')  # if team number is odd - use 'day off' as fake team

    rotation = list(teams)  # copy the list

    fixtures = []
    for i in range(0, len(teams) - 1):
        fixtures.append(rotation)
        rotation = [rotation[0]] + [rotation[-1]] + rotation[1:-1]

    return fixtures


def postMatchSummary(request):
    """
        Persist Each MAtch Summary Data
    """ 
    if request.method == 'POST':
       rowId = request.POST['rowId']
       wins = sample([request.POST['teamAId'],request.POST['teamBId']],1)
       #print(wins[0])
       Matches.objects.filter(pk=rowId).update(winner_id=wins[0],is_played='y')
       MatchPointsObj = MatchPoints(match_id=rowId,team_id=wins[0],point='2')
       MatchPointsObj.save()