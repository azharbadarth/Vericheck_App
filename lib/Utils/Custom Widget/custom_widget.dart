import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vericheck_app/Utils/Colors/colors.dart';

class MyTargetModelClass {
  final String Text;
  final String Subtext;
  final String RightText;

  MyTargetModelClass({
    required this.Text,
    required this.Subtext,
    required this.RightText,
  });
}

List<MyTargetModelClass> mytargetlist = [
  MyTargetModelClass(
    Text: "Pizza Hut",
    RightText: "1 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "BarBQ Tonight",
    RightText: "2 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "Cafe Aylanto",
    RightText: "4 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "Xander’s Cafe",
    RightText: "2 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "Al-Bustan",
    RightText: "9 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "BurgerO Clock",
    RightText: "6 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "Kolachi",
    RightText: "1 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "The Deli",
    RightText: "8 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "KFC",
    RightText: "4 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "Dominos",
    RightText: "1 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "Al Naaz",
    RightText: "2 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
  MyTargetModelClass(
    Text: "Cafe Sultan",
    RightText: "9 days left",
    Subtext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
  ),
];

class RepotModelClass {
  final String date;
  final String Pizzatext;
  final String Statustext;
  final String Completetext;
  final String addresstext;
  final String Datetext;
  final String TimeText;
  final String EditText;
  final String ViewText;
  RepotModelClass({
    required this.date,
    required this.Pizzatext,
    required this.Statustext,
    required this.Completetext,
    required this.addresstext,
    required this.Datetext,
    required this.TimeText,
    required this.EditText,
    required this.ViewText,
  });
}

List<RepotModelClass> Reportlist = [
  RepotModelClass(
      date: "Today",
      Pizzatext: "Pizza Hut",
      Statustext: "Status",
      Completetext: "Complete",
      addresstext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
      Datetext: "23 October 2023",
      TimeText: "3:00 PM",
      EditText: "Edit",
      ViewText: "View Details"),
  RepotModelClass(
      date: "",
      Pizzatext: "Kolachi",
      Statustext: "Status",
      Completetext: "Complete",
      addresstext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
      Datetext: "23 October 2023",
      TimeText: "3:00 PM",
      EditText: "Edit",
      ViewText: "View Details"),
  RepotModelClass(
      date: "Yesterday",
      Pizzatext: "Pizza Hut",
      Statustext: "Status",
      Completetext: "Complete",
      addresstext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
      Datetext: "23 October 2023",
      TimeText: "3:00 PM",
      EditText: "Edit",
      ViewText: "View Details"),
  RepotModelClass(
      date: "",
      Pizzatext: "Pizza Hut",
      Statustext: "Status",
      Completetext: "Complete",
      addresstext: "5/1, Boating Basin, Clifton, Block-5,\nKarachi, Pakistan",
      Datetext: "23 October 2023",
      TimeText: "3:00 PM",
      EditText: "Edit",
      ViewText: "View Details")
];

CustomWidgetPizzHut({img, txt}) {
  return Card(
    elevation: 10,
    child: Container(
      decoration: BoxDecoration(
          color: ColorSelect().WHITECOLOR,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(height: 40, width: 40, child: Image.asset(img)),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              txt,
              style:
                  GoogleFonts.dmSans(fontSize: 18, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    ),
  );
}

class KitchenModelClass {
  final String Questionno;
  final String Questiontext;
  final String imgs;
  KitchenModelClass(
      {required this.Questionno,
      required this.Questiontext,
      required this.imgs});
}

List<KitchenModelClass> Kitchenlist = [
  KitchenModelClass(
      Questionno: "Q:1",
      Questiontext:
          "What safety measures are typically\nin place to prevent accidents?",
      imgs: "assets/Kitchen_Screen/tick-double.png"),
  KitchenModelClass(
      Questionno: "Q:2",
      Questiontext: "How does a restaurant kitchen\nmanage food inventory?",
      imgs: "assets/Kitchen_Screen/tick-double.png"),
  KitchenModelClass(
      Questionno: "Q:3",
      Questiontext:
          "What are typical roles and\nresponsibilities of different staff\nmembers?",
      imgs: "assets/Kitchen_Screen/tick-double.png"),
  KitchenModelClass(
      Questionno: "Q:4",
      Questiontext:
          "How does a restaurant kitchen\nensure quality control consistency?",
      imgs: "assets/Kitchen_Screen/tick-double.png"),
  KitchenModelClass(
      Questionno: "Q:5",
      Questiontext: "What equipment and technology\nare commonly used?",
      imgs: "assets/Kitchen_Screen/tick-double.png"),
];
