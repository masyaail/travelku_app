// // import 'package:flutter/material.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'package:travelku/models/Posts.dart';

// // class ExampleSearch extends StatefulWidget {
// //   const ExampleSearch({super.key});

// //   @override
// //   State<ExampleSearch> createState() => _ExampleSearchState();
// // }

// // class _ExampleSearchState extends State<ExampleSearch> {
// //   List<Posts> _list = [];
// //   List<Posts> _search = [];
// //   var loading = false;

// //   Future<Null> fetchData() async {
// //     setState(() {
// //       loading = true;
// //     });
// //     _list.clear();
// //     final response =
// //         await http.get('https://jsonplaceholder.typicode.com/posts' as Uri);
// //     if (response.statusCode == 200) {
// //       final data = jsonDecode(response.body);
// //       setState(() {
// //         for (Map<String, dynamic> i in data) {
// //           _list.add(Posts.fromJson(i));
// //           loading = false;
// //         }
// //       });
// //     }
// //   }

// //   TextEditingController controller = new TextEditingController();

// //   onSearch(String text) async {
// //     _search.clear();
// //     if (text.isEmpty) {
// //       setState(() {});
// //       return;
// //     }

// //     _list.forEach((f) {
// //       if (f.title.contains(text) || f.id.toString().contains(text))
// //         _search.add(f);
// //     });

// //     setState(() {});
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchData();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(),
// //       body: Container(
// //         child: Column(
// //           children: <Widget>[
// //             Container(
// //               padding: const EdgeInsets.all(10),
// //               color: Colors.blue,
// //               child: Card(
// //                 child: ListTile(
// //                   leading: const Icon(Icons.search),
// //                   title: TextField(
// //                       controller: controller,
// //                       onChanged: onSearch,
// //                       decoration: const InputDecoration(
// //                           hintText: 'Search', border: InputBorder.none), ),
// //                       trailing: IconButton(
// //                         onPressed: () {
// //                           controller.clear();
// //                           onSearch('');
// //                         },
// //                         icon: const Icon(Icons.cancel),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               loading
// //                 ? const Center(
// //                   child: CircularProgressIndicator(),
// //                   )
// //                 : Expanded(
// //                   child : _search.length != 0 || controller.text.isNotEmpty
// //                       ? ListView.builder(
// //                           itemCount: _search.length,
// //                           itemBuilder : (context, i) {
// //                   final b = _search[i];
// //                     return Container(
// //                       padding : const EdgeInsets.all(10),
// //                       child: Column(
// //                         crossAxisAlignment :
// //                             CrossAxisAlignment.start,
// //                         children : <Widget>[
// //                           Text(
// //                             b.title,
// //                             style : const TextStyle(
// //                               fontWeight : FontWeight.bold,
// //                               fontSize : 18),
// //                             ),
// //                             const SizedBox(
// //                               height: 4,),
// //                               Text(b.body),
// //                         ],
// //                         ));
// //                   }
// //                   )
// //                   : ListView.builder(
// //                 itemCount: _list.length,
// //                 itemBuilder : (context, i) {
// //                   final a = _list[i];
// //                     return Container(
// //                       padding : const EdgeInsets.all(10),
// //                       child: Column(
// //                         crossAxisAlignment : CrossAxisAlignment.start,
// //                         children : <Widget>[
// //                           Text(a.title,
// //                           style : const TextStyle(
// //                             fontWeight : FontWeight.bold,
// //                             fontSize : 18),
// //                             ),
// //                             const SizedBox(
// //                               height: 4,),
// //                               Text(a.body),
// //                         ],
// //                         ));
// //                 },
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// // // import 'dart:convert';

// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:travelku/models/Posts.dart';

// // // class ExampleSearch extends StatefulWidget {
// // //   @override
// // //   _ExampleSearchState createState() => _ExampleSearchState();
// // // }

// // // class _ExampleSearchState extends State<ExampleSearch> {
// // //   List<Posts> _list = [];
// // //   List<Posts> _search = [];
// // //   var loading = false;
// // //   Future<Null> fetchData() async {
// // //     setState(() {
// // //       loading = true;
// // //     });
// // //     _list.clear();
// // //     final response =
// // //         await http.get("https://jsonplaceholder.typicode.com/posts" as Uri);
// // //     if (response.statusCode == 200) {
// // //       final data = jsonDecode(response.body);
// // //       setState(() {
// // //         for (Map i in data) {
// // //           _list.add(Posts.fromJson(i));
// // //           loading = false;
// // //         }
// // //       });
// // //     }
// // //   }

// // //   TextEditingController controller = new TextEditingController();

// // //   onSearch(String text) async {
// // //     _search.clear();
// // //     if (text.isEmpty) {
// // //       setState(() {});
// // //       return;
// // //     }

// // //     _list.forEach((f) {
// // //       if (f.title.contains(text) || f.id.toString().contains(text))
// // //         _search.add(f);
// // //     });

// // //     setState(() {});
// // //   }

// // //   @override
// // //   void initState() {
// // //     // TODO: implement initState
// // //     super.initState();
// // //     fetchData();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(),
// // //       body: Container(
// // //         child: Column(
// // //           children: <Widget>[
// // //             Container(
// // //               padding: EdgeInsets.all(10.0),
// // //               color: Colors.blue,
// // //               child: Card(
// // //                 child: ListTile(
// // //                   leading: Icon(Icons.search),
// // //                   title: TextField(
// // //                     controller: controller,
// // //                     onChanged: onSearch,
// // //                     decoration: InputDecoration(
// // //                         hintText: "Search", border: InputBorder.none),
// // //                   ),
// // //                   trailing: IconButton(
// // //                     onPressed: () {
// // //                       controller.clear();
// // //                       onSearch('');
// // //                     },
// // //                     icon: Icon(Icons.cancel),
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //             loading
// // //                 ? Center(
// // //                     child: CircularProgressIndicator(),
// // //                   )
// // //                 : Expanded(
// // //                     child: _search.length != 0 || controller.text.isNotEmpty
// // //                         ? ListView.builder(
// // //                             itemCount: _search.length,
// // //                             itemBuilder: (context, i) {
// // //                               final b = _search[i];
// // //                               return Container(
// // //                                   padding: EdgeInsets.all(10.0),
// // //                                   child: Column(
// // //                                     crossAxisAlignment:
// // //                                         CrossAxisAlignment.start,
// // //                                     children: <Widget>[
// // //                                       Text(
// // //                                         b.title,
// // //                                         style: TextStyle(
// // //                                             fontWeight: FontWeight.bold,
// // //                                             fontSize: 18.0),
// // //                                       ),
// // //                                       SizedBox(
// // //                                         height: 4.0,
// // //                                       ),
// // //                                       Text(b.body),
// // //                                     ],
// // //                                   ));
// // //                             },
// // //                           )
// // //                         : ListView.builder(
// // //                             itemCount: _list.length,
// // //                             itemBuilder: (context, i) {
// // //                               final a = _list[i];
// // //                               return Container(
// // //                                   padding: EdgeInsets.all(10.0),
// // //                                   child: Column(
// // //                                     crossAxisAlignment:
// // //                                         CrossAxisAlignment.start,
// // //                                     children: <Widget>[
// // //                                       Text(
// // //                                         a.title,
// // //                                         style: TextStyle(
// // //                                             fontWeight: FontWeight.bold,
// // //                                             fontSize: 18.0),
// // //                                       ),
// // //                                       SizedBox(
// // //                                         height: 4.0,
// // //                                       ),
// // //                                       Text(a.body),
// // //                                     ],
// // //                                   ));
// // //                             },
// // //                           ),
// // //                   ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// import 'package:flutter/material.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';

// class ExampleSearch extends StatefulWidget {
//   const ExampleSearch({super.key});

//   @override
//   State<ExampleSearch> createState() => _ExampleSearchState();
// }

// class _ExampleSearchState extends State<ExampleSearch> {
//   @override
//   Widget build(BuildContext context) {
//     return TypeAheadField(
//   textFieldConfiguration: TextFieldConfiguration(
//     autofocus: true,
//     style: DefaultTextStyle.of(context).style.copyWith(
//       fontStyle: FontStyle.italic
//     ),
//     decoration: InputDecoration(
//       border: OutlineInputBorder()
//     )
//   ),
//   suggestionsCallback: (pattern) async {
//     return await BackendService.getSuggestions(pattern);
//   },
//   itemBuilder: (context, suggestion) {
//     return ListTile(
//       leading: Icon(Icons.shopping_cart),
//       title: Text(suggestion['name']),
//       subtitle: Text('\$${suggestion['price']}'),
//     );
//   },
//   onSuggestionSelected: (suggestion) {
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) => ProductPage(product: suggestion)
//     ));
//   },
// );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class ExampleSearch extends StatefulWidget {
  const ExampleSearch({super.key});

  @override
  State<ExampleSearch> createState() => _ExampleSearchState();
}

class _ExampleSearchState extends State<ExampleSearch> {
  List<String> data = ['mobil', 'motor', 'sepeda', 'truk', 'bus', 'kereta api'];

  Future searchData(String param) async {
    List<String> result = await data
        .where((element) => element.toLowerCase().contains(param.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TypeAheadField<String>(
        textFieldConfiguration: TextFieldConfiguration(
            autofocus: true,
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontStyle: FontStyle.italic),
            decoration: InputDecoration(border: OutlineInputBorder())),
        suggestionsCallback: (pattern) async {
          return await searchData(pattern);
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(suggestion),
            // subtitle: Text('\$${suggestion['price']}'),
          );
        },
        onSuggestionSelected: (suggestion) {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => ProductPage(product: suggestion)));
          print(suggestion);
        },
      ),
    );
  }
}
