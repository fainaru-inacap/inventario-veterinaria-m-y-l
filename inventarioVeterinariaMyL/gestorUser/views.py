from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required, user_passes_test

def es_admin(user):
    return user.is_staff

@login_required
@user_passes_test(es_admin)
def lista_usuarios(request):
    usuarios = User.objects.all()
    return render(request, 'gestorUser/lista_usuarios.html', {'usuarios': usuarios})

from .forms import UserForm

@login_required
@user_passes_test(es_admin)
def crear_usuario(request):
    if request.method == 'POST':
        form = UserForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('lista_usuarios')
    else:
        form = UserForm()
    return render(request, 'gestorUser/form_usuario.html', {'form': form, 'titulo': 'Nuevo Usuario'})

@login_required
@user_passes_test(es_admin)
def editar_usuario(request, user_id):
    usuario = get_object_or_404(User, id=user_id)
    if request.method == 'POST':
        form = UserForm(request.POST, instance=usuario)
        if form.is_valid():
            form.save()
            return redirect('lista_usuarios')
    else:
        form = UserForm(instance=usuario)
    return render(request, 'gestorUser/form_usuario.html', {'form': form, 'titulo': 'Editar Usuario'})

@login_required
@user_passes_test(es_admin)
def eliminar_usuario(request, user_id):
    usuario = get_object_or_404(User, id=user_id)
    if request.method == 'POST':
        usuario.delete()
        return redirect('lista_usuarios')
    return render(request, 'gestorUser/confirmar_eliminar.html', {'usuario': usuario})

from django.contrib.auth.forms import SetPasswordForm

@login_required
@user_passes_test(es_admin)
def cambiar_contrasena(request, user_id):
    usuario = get_object_or_404(User, id=user_id)
    if request.method == 'POST':
        form = SetPasswordForm(usuario, request.POST)
        if form.is_valid():
            form.save()
            return redirect('lista_usuarios')
    else:
        form = SetPasswordForm(usuario)
    
    for field in form.fields.values():
        field.widget.attrs.update({'class': 'form-control'})
        
    return render(request, 'gestorUser/form_password.html', {'form': form, 'usuario': usuario})
