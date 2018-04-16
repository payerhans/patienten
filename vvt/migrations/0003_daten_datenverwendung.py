# Generated by Django 2.0.4 on 2018-04-16 10:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('vvt', '0002_datengruppen_datengruppe_anmerkung'),
    ]

    operations = [
        migrations.CreateModel(
            name='Daten',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('daten', models.CharField(max_length=200)),
                ('daten_anmerkung', models.TextField()),
                ('datengruppe', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='vvt.Datengruppen')),
            ],
        ),
        migrations.CreateModel(
            name='Datenverwendung',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('datenverwendung', models.CharField(max_length=200)),
                ('datenverwendung_anmerkung', models.TextField()),
                ('daten', models.ManyToManyField(to='vvt.Daten')),
            ],
        ),
    ]
