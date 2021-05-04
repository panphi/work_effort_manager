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
      body: StreamBuilder<QuerySnapshot>(
        builder: (context, snapshot) => _buildList(context, snapshot),
        stream: dbInteractor.getEffortsStream(),
      ),
      //backgroundColor: Colors.white,
    );
  }

  Widget _buildList(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasError) {
      //TODO Error message or something
      return SafeArea(child: Text('It didnt work :('));
    }
    if (!snapshot.hasData) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    switch (snapshot.connectionState) {
      case ConnectionState.none:
      case ConnectionState.waiting:
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      case ConnectionState.done:
      case ConnectionState.active:
        var queryResult = snapshot.data;
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
              dbInteractor.addEffort();
            },
            child: Icon(Icons.add),
          ),
        );
    }
  }

  //TODO beautify
  Widget _buildEffortItem(BuildContext context, int index) {
    //TODO could this ever be actually null and needs some special handling?
    Effort effort = Effort.fromJson(efforts![index].data()!);
    return ListTile(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => EffortDetailPage(effort))),
      leading: CircleAvatar(
        backgroundColor: effort.status.color,
        radius: 25,
        //TODO show proper Icon
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
