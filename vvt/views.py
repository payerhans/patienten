from django.shortcuts import render
#from django.http import HttpResponse
from .models import Datengruppen

# Create your views here.

def index(request):
    #datengruppen_list = [1,2,3,4,5,6]
    datengruppen_list = Datengruppen.objects.all()
    #output = ', '.join([q.datengruppe for q in datengruppen_list])
    context = {'datengruppen' : datengruppen_list}
    #return HttpResponse(output)
    return render(request, 'index.html', context)
