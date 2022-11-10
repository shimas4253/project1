import 'package:flutter/material.dart';

class sheet extends StatelessWidget {
  const sheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void show(BuildContext cntx) {
      showModalBottomSheet(
          isScrollControlled: true,
          context: cntx,
          builder: (cntx) => Container(
                padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                    bottom: MediaQuery.of(cntx).viewInsets.bottom + 100),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Name',
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Age',
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('Share'))
                  ],
                ),
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('bottom sheet'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => show(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
