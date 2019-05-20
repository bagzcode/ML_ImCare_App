""" module train and test ML for Decission Tree Classifier """
#from django.shortcuts import render
# Create your views here.
import os
import pickle
import json
from django.conf import settings
from django.http import JsonResponse
import numpy as np
import pandas as pd
from sklearn import datasets
from sklearn.ensemble import RandomForestClassifier
from rest_framework import views
from rest_framework import status
from rest_framework.response import Response

class Train(views.APIView):
    """ class train """
    def post(self, request):
        """ post function """
        iris = datasets.load_iris()
        mapping = dict(zip(np.unique(iris.target), iris.target_names))

        x_train = pd.DataFrame(iris.data, columns=iris.feature_names)
        y_train = pd.DataFrame(iris.target).replace(mapping)
        model_name = request.data.pop('model_name')

        try:
            clf = RandomForestClassifier(**request.data)
            clf.fit(x_train, y_train)
        except Exception as err:
            return Response(str(err), status=status.HTTP_400_BAD_REQUEST)

        path = os.path.join(settings.MODEL_ROOT, model_name)
        with open(path, 'wb') as file:
            pickle.dump(clf, file)
        return Response(status=status.HTTP_200_OK)

    def get (self, request):
        FormatForm = JsonResponse(
        {\
            "model_name": "[name_of_your_model]", \
            "n_estimatorrs": [number_of_estimator_parameter], \
            "criterion": [name_of_criterion],\
            "min_samples_split":[number_of_minimum_data_split]\
        })
        return Response(FormatForm, status=.HTTP._200_OK) 

class Predict(views.APIView):
    """ class predict """
    def post(self, request):
        """ post function """
        predictions = []
        for entry in request.data:
            model_name = entry.pop('model_name')
            path = os.path.join(settings.MODEL_ROOT, model_name)
            with open(path, 'rb') as file:
                model = pickle.load(file)
            
            try:
                result = model.predict(pd.DataFrame([entry]))
                predictions.append(result[0])

            except Exception as err:
                return Response(str(err), status=status.HTTP_400_BAD_REQUEST)
            
        return Response(predictions, status=status.HTTP_200_OK)
