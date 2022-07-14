class MeetingModel {
  MeetingModel({
    required this.meetingName,
    required this.createdAt,
  });

  String meetingName;
  DateTime createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['meetingName'] = meetingName;
    map['createdAt'] = createdAt;
    return map;
  }
}
