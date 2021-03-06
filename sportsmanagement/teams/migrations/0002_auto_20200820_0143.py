# Generated by Django 3.1 on 2020-08-19 20:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('teams', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='player',
            name='photo',
            field=models.ImageField(default='', max_length=255, upload_to='player'),
        ),
        migrations.AddField(
            model_name='team',
            name='logo',
            field=models.ImageField(default='', max_length=255, upload_to='team'),
        ),
    ]
