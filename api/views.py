from django.shortcuts import render
from rest_framework import viewsets
from vvt.models import Datengruppen
from .serializers import DatengruppenSerializer

# Create your views here.

class DatengruppenViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Datengruppen.objects.all()
    serializer_class = DatengruppenSerializer