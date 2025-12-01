from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required, user_passes_test
from .models import Categoria, Producto
from .forms import CategoriaForm, ProductoForm

def es_admin(user):
    return user.is_staff

@login_required
@user_passes_test(es_admin)
def lista_categorias(request):
    categorias = Categoria.objects.all()
    return render(request, 'gestorProducts/lista_categorias.html', {'categorias': categorias})

@login_required
@user_passes_test(es_admin)
def crear_categoria(request):
    if request.method == 'POST':
        form = CategoriaForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('lista_categorias')
    else:
        form = CategoriaForm()
    return render(request, 'gestorProducts/form_categoria.html', {'form': form, 'titulo': 'Nueva Categoría'})

@login_required
@user_passes_test(es_admin)
def editar_categoria(request, categoria_id):
    categoria = get_object_or_404(Categoria, id=categoria_id)
    if request.method == 'POST':
        form = CategoriaForm(request.POST, instance=categoria)
        if form.is_valid():
            form.save()
            return redirect('lista_categorias')
    else:
        form = CategoriaForm(instance=categoria)
    return render(request, 'gestorProducts/form_categoria.html', {'form': form, 'titulo': 'Editar Categoría'})

@login_required
@user_passes_test(es_admin)
def eliminar_categoria(request, categoria_id):
    categoria = get_object_or_404(Categoria, id=categoria_id)
    if request.method == 'POST':
        categoria.delete()
        return redirect('lista_categorias')
    return render(request, 'gestorProducts/confirmar_eliminar_categoria.html', {'categoria': categoria})

 
@login_required
def lista_productos(request):
    if request.user.is_staff:
        productos = Producto.objects.all()
    else:
        productos = Producto.objects.filter(usuario=request.user)
    return render(request, 'gestorProducts/lista_productos.html', {'productos': productos})

@login_required
def crear_producto(request):
    if request.method == 'POST':
        form = ProductoForm(request.POST)
        if form.is_valid():
            producto = form.save(commit=False)
            producto.usuario = request.user
            producto.save()
            return redirect('lista_productos')
    else:
        form = ProductoForm()
    return render(request, 'gestorProducts/form_producto.html', {'form': form, 'titulo': 'Nuevo Producto'})

@login_required
def editar_producto(request, producto_id):
    
    if request.user.is_staff:
        producto = get_object_or_404(Producto, id=producto_id)
    else:
        producto = get_object_or_404(Producto, id=producto_id, usuario=request.user)
        
    if request.method == 'POST':
        form = ProductoForm(request.POST, instance=producto)
        if form.is_valid():
            form.save()
            return redirect('lista_productos')
    else:
        form = ProductoForm(instance=producto)
    return render(request, 'gestorProducts/form_producto.html', {'form': form, 'titulo': 'Editar Producto'})

@login_required
@user_passes_test(es_admin)
def eliminar_producto(request, producto_id):
    producto = get_object_or_404(Producto, id=producto_id)
    if request.method == 'POST':
        producto.delete()
        return redirect('lista_productos')
    return render(request, 'gestorProducts/confirmar_eliminar_producto.html', {'producto': producto})
