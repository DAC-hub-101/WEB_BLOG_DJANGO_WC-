from django.contrib import admin
from .models import Post, Comments
#Needed for Video Embeding
from embed_video.admin import AdminVideoMixin
from .models import Item


admin.site.register(Post)

admin.site.register(Comments)

class CommentAdmin(admin.ModelAdmin):
    list_display = ('name', 'body', 'post', 'created_on', 'active')
    list_filter = ('active', 'created_on')
    search_fields = ('user', 'content')
    actions = ['approve_comments']

    def approve_comments(self, request, queryset):
        queryset.update(active=True)

#Video Embedding Admin mixin
class MyModelAdmin(AdminVideoMixin, admin.ModelAdmin):
    pass

admin.site.register(Item, MyModelAdmin)