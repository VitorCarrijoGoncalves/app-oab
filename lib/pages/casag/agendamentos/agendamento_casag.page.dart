import 'package:flutter/material.dart';
import 'package:servicos_oab/components/table_calendar.dart';
import 'package:servicos_oab/pages/bottomNavigationBar.dart';
import 'package:servicos_oab/pages/casag/agendamentos/agendamento_com_sucesso.page.dart';
import 'package:servicos_oab/pages/casag/auxilios/auxilios-casag.page.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:servicos_oab/pages/casag/casag_appbar.dart';
import 'package:servicos_oab/pages/drawer.dart';
import 'package:servicos_oab/pages/footer.dart';

class AgendamentoCasagPage extends StatelessWidget {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: getDrawer(context),
        appBar: getCasagAppBar(),
        body: Container(
          color: Colors.white,
          child: ListView(children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'AGENDAMENTO',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
            ),
            Column(
              children: [
                DropdownButton(
                  items: <String>[
                    "Pé ou Mão - R\$ 10,00",
                    'Pé e Mão - R\$ 20,00'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {},
                ),
              ],
            ),
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  // Call `setState()` when updating the selected day
                  //setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                 // });
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  _calendarFormat = format;
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
/*                       TimeOfDay(
                hour: 23,
                minute: 11,
              ), */ 
            Column(
              children: [
                DropdownButton(
                  items: <String>['Pé ou Mão', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {},
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.blue;
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue;
                      if (states.contains(MaterialState.pressed))
                        return Colors.blue;
                      return null; // Defer to the widget's default.
                    }),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AgendamentoComSucessoPage(),
                      ),
                    );
                  },
                  child: Text('CONFIRMAR AGENDAMENTO'),
                )
              ],
            ),
            Column(
              children: <Widget>[getFooter()],
            ),
          ]),
        ),
        bottomNavigationBar: getButtonsNavigationBar());
  }
}
