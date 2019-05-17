import pandas as pd
import numpy as np
from django.db import models
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
from sklearn import tree
from sklearn.neighbors import KNeighborsClassifier
from xgboost import XGBClassifier

class MachineLearning(models.Model):
    def importData:
        #import data into a variable # data mayapada
        rawdata = pd.read_csv("../HIBAH_DIKTI2_CODES/data_mayapada.csv")
