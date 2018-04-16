from django.contrib import admin
from .models import Datengruppen, Daten, Datenuebermittlung, Empfaenger

# Register your models here.
admin.site.register(Datengruppen)
admin.site.register( Daten,)
admin.site.register(Datenuebermittlung)
admin.site.register(Empfaenger)