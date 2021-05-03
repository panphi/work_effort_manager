import 'package:flutter/material.dart';
import 'package:work_effort_manager/objects/effort.dart';

class EffortDetailPage extends StatelessWidget {
  final Effort effort;

  EffortDetailPage(this.effort);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(effort.jobTitle),
                SizedBox(width: 10),
                Text(effort.company),
              ],
            ),
            SizedBox(height: 5),
            Text(effort.status.name),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) =>
              _buildInteractionItem(context, index),
          itemCount: effort.interactions!.length,
        ),
      ),
    );
  }

  Widget _buildInteractionItem(BuildContext context, int index) {
    //TODO could this ever be actually null and needs some special handling?
    //TODO add some preview
    var interaction = effort.interactions![index];
    return ListTile(
      onTap: () => print(interaction.date.toIso8601String()),
      leading: CircleAvatar(
        // backgroundColor: effort.status.color,
        radius: 25,
        child: Text('${interaction.date.day}.${interaction.date.month}'),
      ),
      title: Text(interaction.runtimeType.toString()),
    );
  }
}
