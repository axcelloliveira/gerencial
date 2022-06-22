import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/meeting_model.dart';
import 'legend_calendar.dart';

class CalendarPage extends StatelessWidget {
  CalendarPage({Key? key}) : super(key: key);

  final f = DateFormat('yyyy-mm-dd');

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAllNamed('/MenuPage');
        return true;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            centerTitle: true,
            title: const Text(
              'Quadro de Entregas',
              style: TextStyle(color: Colors.black),
            ),
            actions: const[
              LegendCalendar(),
            ],
            elevation: 1,
            backgroundColor: Colors.white,
          ),
        ),
        body: FutureBuilder(
          future: getDataFromWeb(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            var now = DateTime.now();
            var formatter = DateFormat('yyyy');
            var formatter2 = DateFormat('dd');
            var formatter3 = DateFormat('MM');
            String formattedDate = formatter.format(now);
            String formattedDate2 = formatter2.format(now);
            String formattedDate3 = formatter3.format(now);
            if (snapshot.data != null) {
              return SafeArea(
                child: SfCalendar(
                  headerStyle:
                      const CalendarHeaderStyle(textAlign: TextAlign.center),
                  view: CalendarView.month,
                  allowedViews: const [
                    CalendarView.day,
                    CalendarView.week,
                    CalendarView.workWeek,
                    CalendarView.month,
                  ],
                  showNavigationArrow: true,
                  monthViewSettings: const MonthViewSettings(
                    showAgenda: true,
                  ),
                  timeSlotViewSettings: const TimeSlotViewSettings(
                      timeInterval: Duration(minutes: 30), timeFormat: 'hh:mm'),
                  appointmentTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  appointmentTimeTextFormat: 'HH:mm',
                  initialDisplayDate: DateTime(int.parse(formattedDate),
                      int.parse(formattedDate3), int.parse(formattedDate2)),
                  dataSource: MeetingDataSource(snapshot.data),
                ),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Falha de comunicação com o servidor'),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Carregando informações'),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<List<Meeting>> getDataFromWeb() async {
    var data = await http
        .get(Uri.parse("https://www.9487.masterdaweb.net:8083/eventos/carregaEntregas"))
        .timeout(const Duration(seconds: 16));
    var jsonData = json.decode(data.body);
    final List<Meeting> appointmentData = [];
    for (var data in jsonData) {
      Color? colors;
      var formatter = DateFormat('yyyy');
      var formatter2 = DateFormat('dd');
      var formatter3 = DateFormat('MM');

      if (data['FASE'] == 'EmProducao') {
        colors = Colors.brown[900];
      } else if (data['FASE'] == 'AguardCort') {
        colors = Colors.orange;
      } else if (data['FASE'] == 'EmCorte') {
        colors = Colors.deepPurple[900];
      } else if (data['FASE'] == 'Estoque') {
        colors = Colors.blue;
      } else if (data['FASE'] == 'Enviado') {
        colors = Colors.green;
      } else {
        colors = Colors.black;
      }
      int hour = data['HORA'];
      String formattedDate =
          formatter.format(DateTime.parse(data['DATA_ENTREGA']));
      String formattedDate2 =
          formatter2.format(DateTime.parse(data['DATA_ENTREGA']));
      String formattedDate3 =
          formatter3.format(DateTime.parse(data['DATA_ENTREGA']));
      String conc = data['NOME'] +
          '  -  ' +
          data['PRODUTO'] +
          '  -  ' +
          data['QUANTIDADE'].toString() +
          ' PEÇAS ';
      Meeting meetingData = Meeting(
        codCabeca: conc,
        dataEntrega: DateTime(int.parse(formattedDate),
            int.parse(formattedDate3), int.parse(formattedDate2), hour),
        dataComposicao: DateTime(int.parse(formattedDate),
                int.parse(formattedDate3), int.parse(formattedDate2), hour)
            .add(const Duration(minutes: 60)),
        background: colors!,
        notes: data['COD_CABECA'],
      );
      appointmentData.add(meetingData);
    }
    return appointmentData;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].dataEntrega;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].dataComposicao;
  }

  @override
  String getSubject(int index) {
    return appointments![index].codCabeca;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  String getNotes(int index) {
    return appointments![index].notes;
  }
}
