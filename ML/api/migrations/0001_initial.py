# Generated by Django 2.2.1 on 2019-05-17 02:35

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Pembawa',
            fields=[
                ('nopembawa', models.AutoField(primary_key=True, serialize=False)),
                ('descpembawa', models.TextField()),
                ('kdpenyakit', models.CharField(max_length=20)),
            ],
        ),
    ]
