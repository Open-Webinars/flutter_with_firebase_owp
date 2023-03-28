import 'package:flutter/material.dart';

import 'package:flutter_with_firebase_owp/movies/widgets/section_film_widget.dart';

class MoviesHome extends StatelessWidget {
  const MoviesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(heroTag: "1", onPressed: () {}),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              heroTag: "2",
              child: Icon(Icons.edit),
              onPressed: () {
                // llamar a la función de la cámara
                // PickImageUtils().showPicker(context);

                //Navegación hacia la pantalla de editar
              })
        ],
      ),
      appBar: AppBar(),
      backgroundColor: const Color.fromRGBO(91, 161, 210, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Flexible(
            flex: 2,
            child: SectionFilmsWidget(),
          ),
        ],
      ),
    );
  }
}
