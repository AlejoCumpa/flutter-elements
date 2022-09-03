import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Alejandro',
      'last_name': 'Cumpa',
      'email': 'alejandro@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre del Usuario',
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido del Usuario',
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                textInputType: TextInputType.emailAddress,
                labelText: 'Correo',
                hintText: 'Correo del Usuario',
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                isObscure: true,
                labelText: 'Password',
                hintText: 'Contraseña del Usuario',
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Super User',
                      child: Text('Super User'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    )
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  }),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }

                    print(formValues);
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Enviar'))))
            ]),
          ),
        ),
      ),
    );
  }
}
