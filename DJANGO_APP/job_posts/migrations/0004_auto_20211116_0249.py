# Generated by Django 3.2.7 on 2021-11-16 00:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('job_posts', '0003_alter_job_requirements_requirements'),
    ]

    operations = [
        migrations.AddField(
            model_name='job_postings',
            name='requirements',
            field=models.TextField(default='gips', max_length=6000),
        ),
        migrations.DeleteModel(
            name='Job_requirements',
        ),
    ]
