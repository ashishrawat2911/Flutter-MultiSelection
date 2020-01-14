import 'package:flutter/material.dart';
import 'package:flutter_multiselection_list/griditem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> itemList;
  List<Item> selectedList;

  @override
  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = List();
    selectedList = List();
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        1));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        2));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        3));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        4));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        5));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        6));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        7));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        8));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        9));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        10));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        11));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        12));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        13));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        14));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        15));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        16));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        17));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        18));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        19));
    itemList.add(Item(
        "https://i.pinimg.com/originals/d2/97/6b/d2976b3baeea771eff0a275e9b2ca2e0.png",
        20));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: GridView.builder(
          itemCount: itemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.56,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2),
          itemBuilder: (context, index) {
            bool value = false;
            return InkWell(
              onTap: () {
                setState(() {
                  value = !value;
                });
              },
              child: GridItem(itemList[index], (bool value) {
                setState(() {
                  if (value) {
                    selectedList.add(itemList[index]);
                  } else {
                    selectedList.remove(itemList[index]);
                  }
                });
                print("$index : $value");
              }),
            );
          }),
    );
  }

  getAppBar() {
    return AppBar(
      title: Text(selectedList.length < 1
          ? "Multi Selection"
          : "${selectedList.length} item selected"),
      actions: <Widget>[
        selectedList.length < 1
            ? Container()
            : GestureDetector(
                onTap: () {
                  setState(() {
                    for (int i = 0; i < selectedList.length; i++) {
                      itemList.remove(selectedList[i]);
                    }
                    selectedList = List();
                  });
                },
                child: Icon(Icons.delete))
      ],
    );
  }
}

class Item {
  String imageUrl;
  int rank;

  Item(this.imageUrl, this.rank);
}
