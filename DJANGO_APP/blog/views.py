from django.http import HttpResponseRedirect, HttpResponseForbidden
from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.models import User
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.urls import reverse
from django.views import View
from django.views.generic import (
    ListView,
    DetailView,
    CreateView,
    UpdateView,
    DeleteView
)
from .models import Post, Comments
from .forms import CommentForm
from django.views.generic import FormView
from django.views.generic.detail import SingleObjectMixin
from .models import Item

class PostListView(ListView):
    model = Post
    template_name = 'blog/home.html'  # <app>/<model>_<viewtype>.html
    context_object_name = 'posts'
    ordering = ['-date_posted']
    paginate_by = 5

class UserPostListView(ListView):
    model = Post
    template_name = 'blog/user_posts.html'  # <app>/<model>_<viewtype>.html
    context_object_name = 'posts'
    paginate_by = 5

    def get_queryset(self):
        user = get_object_or_404(User, username=self.kwargs.get('username'))
        return Post.objects.filter(author=user).order_by('-date_posted')


class PostDetailView(DetailView):
    model = Post

    def get_context_data(self, **kwargs):
        context = {}
        if self.object:
            context['object'] = self.object
            context[
                'comments'] = Comments.objects.all()  # modify this queryset according to how you want to display comments

        context.update(kwargs)
        return super().get_context_data(**context)

class Commentform(SingleObjectMixin, FormView):
        template_name = 'post-detail'
        form_class = CommentForm
        model = Comments

        def post(self, request, *args, **kwargs):
            # if not request.user.is_authenticated():
            #     return HttpResponseForbidden()
            self.object = self.get_object()
            return super(Commentform, self).post(request, *args, **kwargs)

        def get_success_url(self):
            return reverse('post-detail', kwargs={'pk': self.object.pk})

class PostCommentDetail(View):

    def get(self, request, *args, **kwargs):
        view = PostDetailView.as_view()
        return view(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        view = Commentform.as_view()
        return view(request, *args, **kwargs)




    # def get_context_data(self, **kwargs):
    #     context = {}
    #     if self.object:
    #         context['object'] = self.object
    #         context[
    #             'comments'] = Comments.objects.all()  # modify this queryset according to how you want to display comments
    #
    #     context.update(kwargs)
    #     return super().get_context_data(**context)
    #
    # def post(self, request, *args, **kwargs):
    #     if request.method == 'POST':
    #         form = CommentForm(request.POST)
    #         if form.is_valid():
    #                 form.save(commit=False)
    #                 return super().form_valid(form)
    #                 # if a GET (or any other method) we'll create a blank form
    #         else:
    #                 form = CommentForm




class PostCreateView(LoginRequiredMixin, CreateView):
    model = Post
    fields = ['title', 'content']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin,UpdateView):
    model = Post
    fields = ['title', 'content']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author:
            return True
        return False

class PostDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Post
    success_url = '/'

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author:
            return True
        return False

def about(request):
    return render(request, 'blog/about.html', {'title': 'About'})



# Using translation and a session
def home(request):
    context = {'posts': Post.objects.all()}
    return render(request, 'blog/home.html', context)

#Creating a Video Function
def video(request):
    obj = Item.objects.all()
    return render(request, 'blog/about.html',{'obj':obj})