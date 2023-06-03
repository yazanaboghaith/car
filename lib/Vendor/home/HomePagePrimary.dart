import 'package:car1/Constant/Colors.dart';
import 'package:car1/List/ListCars.dart';
import 'package:car1/Widgets/TextInputForAll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePagePrimary extends StatelessWidget {
  List<String> Listcars = [
    "Kia rio",
    "Kia cerato",
    "Kia optima",
    "Kia forte",
    "Kia soll",
    "Marceds 300",
    "Marceds 500",
    "Marceds gclass",
    "Audi A4",
    "Audi A6",
    "Audi A8",
    "Hyundai verna",
    "Hyundai accents",
    "Hyundai accourd",
    "Mitsubishi glx",
    "Mitsubishi lancer",
    "Sham"
  ];
  List<String> ListProducts = ["glass space", "light", "Mirrors"];
  List<String> ListServices = ["", "", ""];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 6, left: 8, top: 14, bottom: 9),
                  child: TextInputForAll(
                    hint: "Add your search",
                    icon: Icons.search,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: kprimareyiconcolor,
                        width: 1.5,
                      ),
                    ),
                    child: PopupMenuButton(
                      icon: Icon(
                        Icons.add,
                        color: kprimareyiconcolor,
                      ),
                      color: kprimareyiconcolor,
                      itemBuilder: (context) => [
                        PopupMenuItem(child: Text("data")),
                        PopupMenuItem(child: Text("data")),
                      ],
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Cars :",
              style: TextStyle(
                  color: kprimareycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 1.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Listcars.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListCars(
                      child: Text(
                        Listcars[index],
                        style: TextStyle(
                          color: kprimareycolor,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Products :",
              style: TextStyle(
                  color: kprimareycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 1.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ListProducts.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListCars(
                      child: Text(
                        ListProducts[index],
                        style: TextStyle(
                          color: kprimareycolor,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Services :",
              style: TextStyle(
                  color: kprimareycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Center(
                      child: Text(
                        "Crane",
                        style: TextStyle(color: kprimareycolor),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Center(
                      child: Text(
                        "car wash",
                        style: TextStyle(color: kprimareycolor),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Center(
                      child: Text(
                        "Fuel filling",
                        style: TextStyle(color: kprimareycolor),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
