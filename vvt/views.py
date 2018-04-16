from django.shortcuts import render
from django.http import HttpResponse
from .models import Datengruppen, Daten

def nester(m1, m2):
    d_list = []
    for i in m1.objects.all():
        d_list.append(m2.objects.filter(datengruppe=i))
    return d_list
        

# Create your views here.

def index(request):
    datengruppen_list = Datengruppen.objects.all()
    context = {'datengruppen' : datengruppen_list, 'titel' : 'DAtengruppen'}
    return render(request, 'index.html', context)

def datendetail(request, datengruppenid):
    daten_list = Daten.objects.filter(datengruppe=datengruppenid)
    datengr = Datengruppen.objects.get(pk=datengruppenid)
    #daten_list = Daten.objects.all()
    content = {'name' : datengr, 'daten_list' : daten_list }
    return render(request, 'datendetail.html', content)
    #return HttpResponse("DAtengruppe {}".format(datengruppenid))

def datengruppen(request):
    
    # daten_list = Daten.objects.filter(datengruppe=datengruppenid)
    # datengr = Datengruppen.objects.get(pk=datengruppenid)
    datengr_list = Datengruppen.objects.all()
    #daten_list = Daten.objects.all()
    #i = datengr_list.pk
    d_list = nester(Datengruppen, Daten)
    content = {'d_list' : d_list, 'datengr_list' : datengr_list }
    return render(request, 'datengruppen.html', content)
