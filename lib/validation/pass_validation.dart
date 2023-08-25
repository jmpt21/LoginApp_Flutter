String? validatePassword(String value) {
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  if (value.isEmpty) {
    return '';
  } else {
    if (!regex.hasMatch(value)) {
      return 'Contraseña débil, debe tener al menos una mayúscula, una minúscula, un número y una longitud de 8';
    } else {
      return 'Success';
    }
  }
}
