from django.db import models

# Create your models here.

class Datengruppen(models.Model):
    datengruppe = models.CharField(max_length=200)
    datengruppe_anmerkung = models.TextField()

    def __str__(self):
        return self.datengruppe


class Daten(models.Model):
    daten = models.CharField(max_length = 200)
    daten_anmerkung = models.TextField()
    datengruppe = models.ForeignKey(Datengruppen, on_delete=models.CASCADE)
    def __str__(self):
        return self.daten

# class Datenverwendung(models.Model):
#     datenverwendung = models.CharField(max_length=200)
#     datenverwendung_anmerkung = models.TextField()
#     daten = models.ManyToManyField(Daten)

#     def __str__(self):
#         return self.datenverwendung

class Datenuebermittlung(models.Model):
    datenuebermittlung = models.CharField(max_length=200)
    datenuebermittlung_rechtsgrundlagen = models.TextField()
    datenuebermittlung_zweck = models.TextField()
    datenuebermittlung_anmerkung = models.TextField()
    daten = models.ManyToManyField(Daten)

    def __str__(self):
        return self.datenuebermittlung

class Empfaenger(models.Model):
    EMPF_ART = (
        ('B','Behörde'),
        ('A','Andere'),
    )
    EMPF_LAND = (
        ('IN', 'Inland'),
        ('EU','EU'),
        ('SD','Sicheres Drittland'),
        ('UD', 'Unsicherse Drittland'),
    )
    empfaenger = models.CharField('Empfänger', max_length=200)
    empfaenger_beschreibung = models.TextField()
    unsicherer_drittstaat = models.BooleanField()
    empfaenger_land = models.CharField(max_length=2, choices=EMPF_LAND)
    empfaenger_art = models.CharField(max_length=2, choices=EMPF_ART)
    datenuebermittlung = models.ManyToManyField(Datenuebermittlung)

    def __str__(self):
        return self.empfaenger
