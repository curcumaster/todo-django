from re import M
from tabnanny import verbose
from django.db import models


class ToDo(models.Model):
    title = models.CharField(max_length=200, verbose_name='Задание')
    is_complete = models.BooleanField(default=False, verbose_name='Готово')

    class Meta():
        verbose_name = 'Задание'
        verbose_name_plural = 'Задания'

    def __str__(self):
        return self.title
