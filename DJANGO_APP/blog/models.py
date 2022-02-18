from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse
#Needed for Video Embeding
from django.db import models
from embed_video.fields import EmbedVideoField


class Post(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.title


    def get_absolute_url(self):
        return reverse('post-detail', kwargs={'pk': self.pk})


class Comments(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    content = models.TextField()
    date_added = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return f'{self.content}{self.user}'


class Item(models.Model):
    video = EmbedVideoField()  # same like models.URLField()