from django.shortcuts import render
from rest_framework import viewsets
from vvt.models import Datengruppen, Daten
from .serializers import DatengruppenSerializer, DatenSerializer

# Create your views here.

class DatengruppenViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Datengruppen.objects.all()
    serializer_class = DatengruppenSerializer

class DatenViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Daten.objects.all()
    serializer_class = DatenSerializer
