""" api/resources.py """

from tastypie.resources import ModelResource
from tastypie.authorization import Authorization
from api.models import Pembawa

class PembawaResource(ModelResource):
    """ class """
    class Meta:
        """ meta class """
        queryset = Pembawa.objects.all()
        resource_name = 'pembawa'
        authorization = Authorization()
