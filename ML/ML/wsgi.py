"""
WSGI config for ML project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/howto/deployment/wsgi/
"""

import os
import sys

#sys.path.append('/var/www/html/django_dir/HibahD/ML/')
sys.path.append('/var/www/html/django_dir/env/lib/python3.5/site-packages')
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ML.settings')

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()

