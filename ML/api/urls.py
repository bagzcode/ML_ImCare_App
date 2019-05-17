""" url for api """
from django.urls import path
from api.views import Train, Predict

app_name = 'api'

urlpatterns = [
    path('train/', Train.as_view(), name="train"),
    path('predict/', Predict.as_view(), name="predict"),
]
