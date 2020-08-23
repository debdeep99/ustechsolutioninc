from django.conf.urls import url
from . import views
from .views import *

urlpatterns = [

    # Team List
    url(r'^$', views.indexView.csrf_exempt(Index.as_view()), name='index'),
    url(r'^index/$', views.indexView.csrf_exempt(Index.as_view()), name='index'),

    # Team Details
    url(r'^teamdetails/(?P<team_id>.*)', views.indexView.csrf_exempt(TeamDetails.as_view()), name='teamdetails'),

    # Match Fixture Details
    url(r'^match-fixtures/$', views.indexView.csrf_exempt(MatchFixture.as_view()), name='match-fixtures'),

    # Team Fixture Creation
    url(r'^fixture/$', views.fixtureView.csrf_exempt(TeamFixture.as_view()), name='fixture'),

    url(r'^play_match/$', views.fixtureView.csrf_exempt(TeamFixture.as_view()), name='play_match'),

]