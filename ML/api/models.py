"""API models"""
from django.db import models


class Pembawa(models.Model):
    """class Pembawa"""
    nopembawa = models.AutoField(primary_key=True)
    descpembawa = models.CharField(max_length=100, null=True)
    kdpenyakit = models.IntegerField(20, null=True)

def __str__(self):
    return '%i %s' % (self.kdpenyakit, self.descpembawa)
