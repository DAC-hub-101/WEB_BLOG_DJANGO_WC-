from django.db import models

# Create your models here.

class Job_postings(models.Model):
    objects = models.Manager()
    link = models.CharField(max_length=200)
    requirements = models.TextField()

    def __str__(self):
        return f'Job Link {self.link} Full requirements{self.requirements}'

    class Meta:
        db_table = "jobs"

# class Job_requirements(models.Model):
#     objects = models.Manager()
#     requirements = models.TextField()
#     job_posting = models.ForeignKey('Job_postings', on_delete= models.CASCADE, null = False)
#
#     def __str__(self):
#         return self.requirements