import 'package:birdilimmutluluk/Sql_%C3%B6rnek/services/user_services.dart';
import 'package:flutter/material.dart';

import 'Models/user.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _ageController = TextEditingController();

  final services = UserServices();

  void showBottomModal(BuildContext ctx, String id, String name, int age) {
    final TextEditingController _updateNameController = TextEditingController();

    final TextEditingController _updateAgeController = TextEditingController();
    _updateNameController.text = name;
    _updateAgeController.text = age.toString();
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return Container(
            padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 10),
            child: SingleChildScrollView(
                child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: TextField(
                      controller: _updateNameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Name'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextField(
                      controller: _updateAgeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Age'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          services.updateUser(
                              id,
                              _updateNameController.text,
                              int.parse(
                                _updateAgeController.text,
                              ));
                        });
                        Navigator.of(ctx).pop();
                      },
                      icon: Icon(Icons.add),
                      label: Text('Save User'),
                    ),
                  ),
                ],
              ),
            )));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/login.jpg'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Age'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    services.saveUser(
                        _nameController.text, int.parse(_ageController.text));
                  });
                  _nameController.clear();
                  _ageController.clear();
                },
                icon: Icon(Icons.add),
                label: Text('Add User'),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: services.fetchUsers(),
                builder: (ctx, snap) {
                  List<User> users = snap.data;
                  if (!snap.hasData) {}
                  return ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (ctx, idx) {
                        return Card(
                          elevation: 3,
                          child: ListTile(
                            title: Text('${users[idx].name}'),
                            subtitle: Text('${users[idx].age}'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    setState(() {
                                      services.deleteUser(users[idx].id);
                                    });
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () => showBottomModal(
                                    context,
                                    users[idx].id,
                                    users[idx].name,
                                    users[idx].age,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
