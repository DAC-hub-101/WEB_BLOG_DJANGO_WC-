# Generated by Django 3.2.7 on 2021-11-16 23:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('job_posts', '0009_rename_job_posting_job_postings'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='job_postings',
            table='jobs',
        ),
    ]
