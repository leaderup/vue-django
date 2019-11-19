from django.shortcuts import render
from django.http import HttpResponseRedirect


# Create your views here.
def index(request):
    return render(request, 'index.html')

def redirect_staticfiles(request):
    next_url = request.path_info
    redirect_url = next_url.replace('/static-vuedj/', '/staticfiles/')
    return HttpResponseRedirect(redirect_url)
