# Generated by Django 3.1 on 2020-08-21 10:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('teams', '0002_auto_20200820_0143'),
    ]

    operations = [
        migrations.AlterField(
            model_name='matches',
            name='held_on',
            field=models.DateField(),
        ),
    ]
