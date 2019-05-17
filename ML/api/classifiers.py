import pandas as pd
import numpy as np
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
from sklearn import tree
from sklearn.neighbors import KNeighborsClassifier
from xgboost import XGBClassifier


#import data into a variable
#data mayapada
rawdata = pd.read_csv("../HIBAH_DIKTI2_CODES/data_mayapada.csv")
#data Hibah
#rawdata = pd.read_csv("../Data Hibah/Setelah Cleaning.csv")
rawdata_names = list(rawdata)
feature_names = rawdata_names[0:rawdata.shape[1]-2]
class_names = ["Normal","Level 1","Level 2","Level 3"]

print "Features: %s , Target/Class: %s" % (feature_names, class_names)

#put the input data into array
alldata = pd.DataFrame(rawdata).values
X = alldata[::,0:rawdata.shape[1]-2]
y = alldata[::,rawdata.shape[1]-1]

#Split the data into training dana and test data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = .5)

#Choose the classifier
classifier = tree.DecisionTreeClassifier()
#classifier = KNeighborsClassifier()
#classifier = XGBClassifier()

#train the data
classifier.fit(X_train, y_train)

#predict/test the data
#this could be input by new data also with the format follow the features variable
predictions = classifier.predict(X_test)
	
#output Accuracy for Training and Testing
print "Accuracy for Training: %f, and for Testing: %f " % (accuracy_score(y_train, predictions),accuracy_score(y_test, predictions))

#viz code
#from sklearn.externals.six import StringIO
#import pydotplus
#dot_data = StringIO()
#tree.export_graphviz(classifier,
#						out_file=dot_data,
#						feature_names=feature_names,
#						class_names=class_names,
#						filled=False, rounded=False,
#						impurity=False)

#graph = pydotplus.graph_from_dot_data(dot_data.getvalue())
#graph.write_pdf("mayapada.pdf")


