from rest_framework import serializers
from vvt.models import Datengruppen

class DatengruppenSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Datengruppen
        fields = ('datengruppe', 'datengruppe_anmerkung')
