from django.shortcuts import render
from django.http import HttpResponse, Http404, JsonResponse,  HttpResponseRedirect
from django.conf import settings
from django.views import View
from django.shortcuts import get_object_or_404
from teams.models import *
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Q, Count
import datetime
from random import *
from teams.businessLogic import *

#================= Team Fixture ================= #

class TeamFixture(View):

    def get(self, request, format=None):

        """
           make data to send into view
        """
        res = createMatchFixture()
        return HttpResponse (res)


    def post(self, request, *args, **kwargs):

      """
          make data to send into view
      """
      postMatchSummary(request)
      return HttpResponse (1)