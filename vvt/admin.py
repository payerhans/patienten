from django.contrib import admin
from .models import Datengruppen, Daten, Datenuebermittlung, Empfaenger

class DatenInline(admin.StackedInline):
    model = Daten
    fields = ['daten', 'daten_anmerkung']
    #extra = 3

class DatenGruppenAdmin(admin.ModelAdmin):
    #model = Datengruppen
    fields = ['datengruppe']

    inlines = [DatenInline]

# Register your models here.
#admin.site.register(Datengruppen)
admin.site.register( Daten,)
admin.site.register(Datenuebermittlung)
admin.site.register(Empfaenger)
admin.site.register(Datengruppen, DatenGruppenAdmin)