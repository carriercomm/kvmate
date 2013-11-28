from django.conf.urls import patterns
from django.conf.urls import url
from django.views.generic.base import RedirectView
from .views import VncView, VncRestartView

urlpatterns = patterns("",
        url(
            regex=r'^(?P<name>\w+)/$',
            view=VncView.as_view(),
            name="vnc"
            ),
        url(
            regex=r'^(?P<name>\w+)/restart/$',
            view=VncRestartView.as_view(),
            name="vnc-restart"
            ),
        url(
            regex=r'^$',
            view=RedirectView.as_view(url='/hosts', permanent=False)
            ),
        )