from django.contrib.auth.models import User

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import permissions
from rest_framework import status

from .serializers import UserSerializer


class UserDetailView(APIView):
    permission_classes = [permissions.IsAuthenticated]

    def get(self, request):
        serialized = UserSerializer(request.user)
        return Response(serialized.data, status=status.HTTP_200_OK)


class UserListView(APIView):
    permission_classes = [permissions.IsAdminUser]

    def get(self, request):
        users = User.objects.all()
        serialized = [UserSerializer(user) for user in users]
        return Response([s.data for s in serialized], status=status.HTTP_200_OK)
