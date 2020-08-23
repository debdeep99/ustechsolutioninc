from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse
from django.template import loader
from django.conf import settings
from django.views import View
from django.shortcuts import get_object_or_404
from teams.models import *
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Sum

#================= My Teams ================= #

class Index(View):
	def get(self,request):
		template = loader.get_template('index.html')
		
		teamData = MatchPoints.objects.values('team__id','team__team_name','team__club_state','team__logo').annotate(total=Sum('point')).all()

		context = {
			'site_title': 'Welcome to Sports Management',
			'teamData'  : teamData
		}
		
		return HttpResponse(template.render(context,request))

#================= A Team and it's players ================= #

class TeamDetails(View):
	def get(self,request,team_id):
		template = loader.get_template('player_details.html')
		TeamName = Team.objects.only('team_name').get(id=team_id).team_name
		teamBasedPlayerList = Player.objects.filter(team__id__contains=team_id).all()

		context = {
			'site_title': 'Team - ' + TeamName,
			'teamName'  : TeamName,
			'teamBasedPlayerList'  : teamBasedPlayerList
		}
		
		return HttpResponse(template.render(context,request))

#================= Match Fixtures ================================= #

class MatchFixture(View):
	def get(self,request):
		template = loader.get_template('match_fixture_details.html')
		fixtureDetails = Matches.objects.select_related('team_a_name').select_related('team_b_name').select_related('winner').all()

		context = {
			'site_title': 'Match Fixtures',
			'fixtureDetails'  : fixtureDetails
		}

		return HttpResponse(template.render(context,request))
