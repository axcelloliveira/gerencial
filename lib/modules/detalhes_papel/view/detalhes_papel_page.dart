import 'package:flutter/material.dart';
import 'package:norteste_gerencial/constants.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/view/row_filter_papel.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/view/searchbar_papel.dart';

class DetalhesPapelPage extends StatelessWidget {
  const DetalhesPapelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'teste',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
               const SearchBarPapel(),
                const SizedBox(
                  height: 10,
                ),
               const RowFilerPapel(),
                SizedBox(
                  height: kSize.height / 1.1,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 105),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0, right: 100),
                              child: Text('100'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 50),
                              child: Text('320'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('68250,00'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
