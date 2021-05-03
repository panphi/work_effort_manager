import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:work_effort_manager/model/db_interactor.dart';
import 'package:work_effort_manager/objects/effort.dart';
import 'package:work_effort_manager/pages/effort_detail_page.dart';

//TODO update when new ones added needed active?
class EffortListPage extends StatefulWidget {
  const EffortListPage();

  @override
  State<StatefulWidget> createState() => _EffortListState();
}

class _EffortListState extends State<EffortListPage> {
  List<DocumentSnapshot>? efforts;

  DBInteractor dbInteractor = DBInteractor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Work Effort Manager')),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) => _buildList(context, snapshot),
        future: dbInteractor.getEfforts(),
      ),
      //backgroundColor: Colors.white,
    );
  }

  Widget _buildList(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasError) {
      //TODO Error message or something
      return SafeArea(child: Text('It didnt work :('));
    }
    switch (snapshot.connectionState) {
      case ConnectionState.done:
        var queryResult = snapshot.data as QuerySnapshot;
        efforts = queryResult.docs;

        return Scaffold(
          body: SafeArea(
            child: ListView.builder(
              itemBuilder: (context, index) => _buildEffortItem(context, index),
              itemCount: queryResult.docs.length,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //TODO navigate to add Effort Page
              print('pressed Button');
            },
            child: Icon(Icons.add),
          ),
        );
      case ConnectionState.none:
      case ConnectionState.waiting:
      case ConnectionState.active:
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
    }
  }

  //TODO beautify
  Widget _buildEffortItem(BuildContext context, int index) {
    //TODO could this ever be actually null and needs some special handling?
    var effort = Effort.fromJson(efforts![index].data()!);
    return ListTile(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => EffortDetailPage(effort))),
      leading: CircleAvatar(
        backgroundColor: effort.status.color,
        radius: 25,
        child: Text('V'),
      ),
      isThreeLine: true,
      title: Text(effort.jobTitle),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(effort.company),
          Text(effort.status.name),
        ],
      ),
    );
  }
}
