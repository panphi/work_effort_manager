import 'package:json_annotation/json_annotation.dart';
import 'package:work_effort_manager/objects/application.dart';
import 'package:work_effort_manager/objects/feedback.dart';
import 'package:work_effort_manager/objects/inquiry.dart';
import 'package:work_effort_manager/objects/interaction.dart';

import 'interview.dart';

class InteractionConverter
    implements JsonConverter<Interaction, Map<String, dynamic>> {
  final String _typeField = 'json_type_type';

  const InteractionConverter();

  Interaction fromJson(Map<String, dynamic> json) {
    if (!json.containsKey(_typeField)) {
      //TODO: change to some kind of proper exception and add handling
      throw Error();
    }
    String type = json[_typeField];
    json.remove(_typeField);
    return fromJsonByType(type, json);
  }

  @override
  Map<String, dynamic> toJson(Interaction object) {
    return object.toJson()..[_typeField] = object.runtimeType.toString();
  }
}

Interaction fromJsonByType(String type, Map<String, dynamic> json) {
  switch (type) {
    case 'Interview':
      return Interview.fromJson(json);

    case 'Inquiry':
      return Inquiry.fromJson(json);

    case 'Feedback':
      return Feedback.fromJson(json);

    case 'Application':
      return Application.fromJson(json);

    default:
//TODO: change to some kind of proper exception and add handling
      throw Error();
  }
}
