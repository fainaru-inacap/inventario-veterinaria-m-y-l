from django.db import models

class Categoria(models.Model):
    nombre = models.CharField(max_length=100, unique=True, verbose_name="Nombre de Categoría")
    descripcion = models.TextField(blank=True, null=True, verbose_name="Descripción")

    def __str__(self):
        return self.nombre

    class Meta:
        verbose_name = "Categoría"
        verbose_name_plural = "Categorías"

class Producto(models.Model):
    nombre = models.CharField(max_length=200, verbose_name="Nombre del Producto")
    usuario = models.ForeignKey('auth.User', on_delete=models.CASCADE, verbose_name="Usuario Creador", null=True, blank=True)
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE, related_name='productos', verbose_name="Categoría")
    precio = models.DecimalField(max_digits=10, decimal_places=0, verbose_name="Precio")
    descripcion = models.TextField(blank=True, null=True, verbose_name="Descripción")
    

    def __str__(self):
        return self.nombre

    class Meta:
        verbose_name = "Producto"
        verbose_name_plural = "Productos"
