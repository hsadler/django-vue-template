from django.urls import path

from . import views

"""
Endpoints for getting user data
"""

app_name = "user"
urlpatterns = [
    path("", views.UserDetailView.as_view()),
    path("all/", views.UserListView.as_view()),
]
