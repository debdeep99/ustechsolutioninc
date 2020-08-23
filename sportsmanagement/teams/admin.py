from django.contrib import admin
from django.apps import apps
from teams.models import *

class CountriesAdmin(admin.ModelAdmin):
    list_display = ('id','country_name')

class TeamAdmin(admin.ModelAdmin):
    list_display = ('id','team_name','logo')

class PlayerAdmin(admin.ModelAdmin):
    list_display = ('id','team','country','first_name','last_name')


admin.site.register(Countries, CountriesAdmin)
admin.site.register(Team, TeamAdmin)
admin.site.register(Player, PlayerAdmin)
