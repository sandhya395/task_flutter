import 'package:flutter/material.dart';
import 'package:test_task_design/get_api/fact_model.dart';
import 'package:test_task_design/lib/api_get_screen/api_services.dart';

import '../../get_api/PostModel/post_model.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({super.key});

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  List<GetData>? posts;
  var isLoaded = false;
  // PastData postData = PastData();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getState();
  }

  getState() async {
    posts = (await PastData()) as List<GetData>?;
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Posts'),
        ),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
            itemCount: posts?.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${int.parse(posts![index].id.toString())}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            posts![index].title ?? '',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            posts![index].description ?? '',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            "${int.parse(posts![index].price.toString())}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            posts![index].category ?? '',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            posts![index].image ?? '',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Center(
    //       child: Text('Posts'),
    //     ),
    //   ),
    //   body: Visibility(
    //     visible: isLoaded,
    //     replacement: const Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //     child: ListView.builder(
    //         itemCount: posts?.length,
    //         itemBuilder: (context, index) {
    //           return Container(
    //             padding: EdgeInsets.all(16),
    //             child: Row(
    //               children: [
    //                 Container(
    //                   height: 50,
    //                   width: 50,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(20),
    //                     color: Colors.grey[300],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 16,
    //                 ),
    //                 Expanded(
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text(
    //                        "${int.parse(posts![index].id.toString())}",
    //                         maxLines: 2,
    //                         overflow: TextOverflow.ellipsis,
    //                         style: TextStyle(
    //                             fontSize: 24, fontWeight: FontWeight.bold),
    //                       ),
    //                       Text(
    //                         posts![index].body ?? '',
    //                         maxLines: 3,
    //                         overflow: TextOverflow.ellipsis,
    //                       ),
    //                       Text(
    //                         posts![index].name ?? '',
    //                           maxLines: 4,
    //                           overflow: TextOverflow.ellipsis,
    //                         style: TextStyle(
    //                             fontSize: 22, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
    //                           ),
    //                       Text(
    //                         "${int.parse(posts![index].postId.toString())}",
    //                         maxLines: 2,
    //                         overflow: TextOverflow.ellipsis,
    //                         style: TextStyle(
    //                             fontSize: 24, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
    //                       ),
    //                       Text(
    //                         posts![index].email ?? '',
    //                         maxLines: 4,
    //                         overflow: TextOverflow.ellipsis,
    //                         style: TextStyle(
    //                             fontSize: 22, fontWeight: FontWeight.bold,),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           );
    //         }),
    //   ),
    // );
  }
}
