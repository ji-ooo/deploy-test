# Generated by Django 4.2.8 on 2024-05-17 09:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movies', '0009_movie_box_office'),
    ]

    operations = [
        migrations.AddField(
            model_name='movie',
            name='popularity',
            field=models.FloatField(default=1),
            preserve_default=False,
        ),
    ]
