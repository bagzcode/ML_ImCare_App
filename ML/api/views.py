""" module train and test ML """
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
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
from sklearn import tree
from sklearn.neighbors import KNeighborsClassifier
from sklearn.ensemble import RandomForestClassifier
from xgboost import XGBClassifier
from rest_framework import views
from rest_framework import status
from rest_framework.response import Response

#data cleveland: https://www.kaggle.com/ronitf/heart-disease-uci#heart.csv

class Train(views.APIView):
    """ class train """
    def post(self, request):
        """ post function """
        model_name = request.data.pop('model_name')
        classifier = request.data.pop('classifier')
        data_source = request.data.pop('data_source')
        print(data_source)
        #import the data source
        if data_source == "iris":
            dt_src = datasets.load_iris()
            dt_source = dt_src.data
            feature_names = dt_src.feature_names
            target_names = dt_src.target_names
            target_data = dt_src.target
        elif data_source == "cleveland":
            dt_source = pd.read_csv("./models/heart.csv") #target to cleveland data
            feature_names = list(dt_source)[0:dt_source.shape[1]-1] #eliminate column target
            target_names = ["Normal","Risk"]
            target_data = dt_source['target'].values
        elif data_source == "mayapada":
            dt_source = pd.read_csv("./models/data_mayapada.csv")#target to mayapada data
            feature_names = list(dt_source)[0:dt_source.shape[1]-2]
            target_names = ["Normal","Level 1","Level 2","Level 3"]
            target_data = dt_source['CLASS'].values
        elif data_source == "new_mayapada":
            dt_source = pd.read_csv("./models/mayapada.csv")#target to new_mayapada data
            feature_names = list(dt_source)[0:dt_source.shape[1]-1]
            target_names = ["sehat","tidak sehat"]
            target_data = dt_source['ket'].values
        elif data_source == "new_mayapada":
            dt_source = pd.read_csv("./models/mayapada.csv")#target to new_mayapada data
            feature_names = list(dt_source)[0:dt_source.shape[1]-1]
            target_names = ["sehat","tidak sehat"]
            target_data = dt_source['ket'].value
        elif data_source == "mayapada13":
            dt_source = pd.read_csv("./models/mayapada_13.csv")#target to mayapada_13 data
            feature_names = list(dt_source)[0:dt_source.shape[1]-1]
            target_names = ["sehat","tidak sehat"]
            target_data = dt_source['ket'].values
        print(feature_names)
        mapping = dict(zip(np.unique(target_data), target_names))
        x_train = pd.DataFrame(dt_source, columns=feature_names).fillna(-1)
        #print(x_train)
        y_train = pd.DataFrame(target_data).replace(mapping)
        try:
            
            if classifier == "RandomForestClassifier":
                clf = RandomForestClassifier(**request.data)
            elif classifier == "XGBClassifier":
                clf = XGBClassifier(**request.data)
            elif classifier == "KNeighborsClassifier":
                clf = KNeighborsClassifier(**request.data)
            elif classifier == "tree":
                clf = tree.DecisionTreeClassifier(**request.data)
            
            clf.fit(x_train, y_train)
        except Exception as err:
            return Response(str(err), status=status.HTTP_400_BAD_REQUEST)

        path = os.path.join(settings.MODEL_ROOT, model_name)
        with open(path, 'wb') as file:
            pickle.dump(clf, file)
        return Response("{Modeling sucessfully created}",status=status.HTTP_200_OK)
    
    def get (self, request): 
        try:
            FormatForm = {
                "data_source": "iris|cleveland|mayapada",
                "classifier": "RandomForestClassifier|XGBClassifier|KNeighborsClassifier|tree",
                "model_name": "[name_of_your_model]",
                "n_estimatorrs": "[number_of_estimator_parameter]",
                "criterion": "[name_of_criterion]",
                "min_samples_split": "[number_of_minimum_data_split]"
             }
        except Exception as err:
            return Response(str(err), status=status.HTTP_400_BAD_REQUEST)
            
        return Response(FormatForm, status=status.HTTP_200_OK) 

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
    
    def get (self, request): 
        try:
            FormatForm = [
	        {
		        "model_name": "model_1",
		        "sepal length (cm)": 5.1,
		        "sepal width (cm)": 3.5,
		        "petal length (cm)": 1.4,
		        "petal width (cm)": 0.2
	        },
	        {
		        "model_name": "model_1",
		        "sepal length (cm)": 3.1,
		        "sepal width (cm)": 1.5,
		        "petal length (cm)": 4.4,
		        "petal width (cm)": 0.6
	    }
]
        except Exception as err:
            return Response(str(err), status=status.HTTP_400_BAD_REQUEST)
            
        return Response(FormatForm, status=status.HTTP_200_OK)
