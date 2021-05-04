abstract class Interaction {
  DateTime date;
  String interactionName;
  //TODO: Attachement?

  Interaction(this.date, this.interactionName);

  Map<String, dynamic> toJson();
}
