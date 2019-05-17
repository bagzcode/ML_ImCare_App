from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def welcome(request):
   return render(request, "welcome.html", {})

def hello(request):
   text = """<h1>welcome to my app !</h1>"""
   return HttpResponse(text)
