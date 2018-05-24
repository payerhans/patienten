from rest_framework import serializers
from vvt.models import Datengruppen, Daten

class DatengruppenSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Datengruppen
        fields = ('datengruppe', 'datengruppe_anmerkung')

class DatenSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Daten
        fields = ('daten', 'daten_anmerkung', 'datengruppe')
