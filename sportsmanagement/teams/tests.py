from django.test import TestCase
import unittest
from teams.models import *

class TestIndexClass(TestCase):
	def setUp(self):
		self.teamId = 1

	def tearDown(self):
		# Closes all the test cases
		print("Closing all test cases")

	def testHomePageWithData(self):
		response = self.client.get('/')
		self.assertEqual(response.status_code, 200)

	def testHomePageWithNoData(self):
		response = self.client.get('/')
		self.assertContains(response,"We could not found any team.")
		self.assertQuerysetEqual(response.context['teamData'],[])

	
if __name__ == '__main__':
	unittest.main()
