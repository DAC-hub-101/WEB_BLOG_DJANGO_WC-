# Generated by Django 3.2.7 on 2021-11-24 01:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_comments'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Comments',
        ),
    ]
