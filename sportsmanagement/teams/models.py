from django.db import models
from datetime import datetime, timedelta, date


class Countries(models.Model):
	""" A Model for country.  """
	country_name = models.CharField(max_length=100)
	

class Team(models.Model):
	""" A Model for our teams.  """
	team_name = models.CharField(max_length=100)
	club_state =  models.CharField(max_length=200, default='')
	logo = models.ImageField(upload_to="team",max_length=255, default='')
	created_date = models.DateField(auto_now=False, auto_now_add=True)
	
	def __str__(self):
		return self.team_name

	def __unicode__(self):
		return '%s' % (self.team_name)


class Player(models.Model):
	""" A Model for our team players.  """
	team = models.ForeignKey(Team, related_name='teamplayers', on_delete=models.CASCADE)
	country = models.ForeignKey(Countries, related_name='teamcountry', on_delete=models.CASCADE)
	first_name = models.CharField(max_length=100)
	last_name = models.CharField(max_length=100)
	jersey_number =  models.CharField(max_length=100)
	photo = models.ImageField(upload_to="player",max_length=255, default='')


class Matches(models.Model):
	""" A Model for our team matches.  """
	add_choices=(
		('y', 'y'),
		('n', 'n')
	)
	team_a_name = models.ForeignKey(Team, related_name='team_a',on_delete=models.CASCADE)
	team_b_name = models.ForeignKey(Team, related_name='team_b',on_delete=models.CASCADE)
	winner =  models.ForeignKey(Team,blank=True, null=True,default='',on_delete=models.CASCADE)
	held_on = models.DateField()
	is_played=models.CharField(max_length=2,choices=add_choices, default='n')


class MatchPoints(models.Model):
	""" A Model for our Match Summary.  """
	add_choices=(
		('y', 'y'),
		('n', 'n')
	)
	match = models.ForeignKey(Matches, related_name='match_p',on_delete=models.CASCADE)
	team  = models.ForeignKey(Team, related_name='team_p',on_delete=models.CASCADE)
	point = models.IntegerField(default=0)


class PlayerHistory(models.Model):
	""" A Model for our Player History.  """
	fifty_choices=(
		('0', '0'),
		('1', '1')
	)
	hundred_choices=(
		('0', '0'),
		('1', '1')
	)
	match = models.ForeignKey(Team, related_name='match_p_h',on_delete=models.CASCADE)
	player = models.ForeignKey(Team, related_name='player_h',on_delete=models.CASCADE)
	runs = models.IntegerField(default=0)
	fifty = models.CharField(max_length=2,choices=fifty_choices, default='0')
	hundreds =models.CharField(max_length=2,choices=hundred_choices, default='n')