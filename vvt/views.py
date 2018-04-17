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

def uebermittlung(request, uebermittlungid):
    titel = "Übermittlungen"
    if uebermittlungid < 10:
        uid = "'%%0"+str(uebermittlungid)+"%%'"
    else:
        uid = "'%%"+str(uebermittlungid)+"%%'"
    #uid = "'%%03%%'"
    ue_detail_list = Daten.objects.raw("SELECT * FROM vvt_daten WHERE daten_anmerkung LIKE %s " % uid )

    context = {'titel' : titel, 'uid' : uid, 'ue_detail_list' : ue_detail_list }
    return render(request, 'uebermittlung.html', context)