import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/components/container.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        leading: BackButton(color: Color(0xFF5DADEC)),
        title:const Text("Calender",),
      ),
      body:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(
                horizontal:24,
                vertical:31,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height:265,
                    width:282,
                    child: CalendarDatePicker2(
                      config: CalendarDatePicker2Config(
                        calendarType: CalendarDatePicker2Type.range,
                        rangeBidirectional: true,
                        firstDate: DateTime(DateTime.now().year - 5),
                        lastDate: DateTime(DateTime.now().year + 5),
                        selectedDayHighlightColor: const Color(0XFFFFFFFF),
                        centerAlignModePicker: true,
                        firstDayOfWeek: 0,
                        controlsHeight: 20.83,
                        weekdayLabelTextStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                        selectedDayTextStyle: const TextStyle(
                          color: Color(0XFF252C33),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                        controlsTextStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                        disabledDayTextStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                        weekdayLabels: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
                      ), value: [],
                    ),
                  ),
                  
                ],
              ),
              
            ),
            CustomContainer(title: "", cType: "cType", pdate: '29/9/2002', exdate: "10/11/2002"),
            CustomContainer(title: "", cType: "cType", pdate: '29/9/2002', exdate: "10/11/2002"),
          ],
        ),
          )
        ],
        
      ),
    );
  }
}
