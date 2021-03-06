# Generated by Django 2.0.4 on 2018-04-16 12:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('vvt', '0006_auto_20180416_1350'),
    ]

    operations = [
        migrations.CreateModel(
            name='Empfaenger',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('empfaenger', models.CharField(max_length=200, verbose_name='Empfänger')),
                ('empfaenger_beschreibung', models.TextField()),
                ('unsicherer_drittstaat', models.BooleanField()),
                ('empfaenger_land', models.CharField(choices=[('IN', 'Inland'), ('EU', 'EU'), ('SD', 'Sicheres Drittland'), ('UD', 'Unsicherse Drittland')], max_length=2)),
                ('empfaenger_art', models.CharField(choices=[('B', 'Behörde'), ('A', 'Andere')], max_length=2)),
                ('datenuebermittlung', models.ManyToManyField(to='vvt.Datenuebermittlung')),
            ],
        ),
    ]
