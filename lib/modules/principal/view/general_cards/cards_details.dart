import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsDetails extends StatelessWidget {
  final String? title;
  final String? weight;
  final String? value;
  final bool? viewValue;

  const CardsDetails(
      {Key? key, this.title, this.weight, this.value, this.viewValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: deviceHeight / 3,
      width: deviceWidth / 1.2,
      child: Card(
        elevation: 5,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title!,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.black, fontSize: 17, letterSpacing: .5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 1, bottom: 1),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Peso: ',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Colors.black, letterSpacing: .5),
                        ),
                      ),
                      Text(
                        '$weight Kg',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Colors.black, letterSpacing: .5),
                        ),
                      ),
                    ],
                  ),
                  if (viewValue!)
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: [
                          Text(
                            'Valor: ',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  color: Colors.black, letterSpacing: .5),
                            ),
                          ),
                          Text(
                             value!,
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  color: Colors.black, letterSpacing: .5),
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    const SizedBox(),
                ],
              ),
            ),
            Padding(
              padding: viewValue!
                  ? const EdgeInsets.only(top: 15.0, right: 15)
                  : const EdgeInsets.only(top: 35, right: 15),
              child: Center(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text('+ Detalhes',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(color: Colors.blue))),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
