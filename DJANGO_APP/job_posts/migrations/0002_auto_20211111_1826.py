# Generated by Django 3.2.7 on 2021-11-11 16:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('job_posts', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='job_postings',
            name='requirements',
        ),
        migrations.CreateModel(
            name='Job_requirements',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('requirements', models.CharField(max_length=200)),
                ('job_posting', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='job_posts.job_postings')),
            ],
        ),
    ]
