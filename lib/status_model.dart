class StatusModel {  final String status;  final String time;  StatusModel({required this.status, required this.time});  StatusModel fromJson(Map json) {    return StatusModel(status: json.keys.toString(), time: json.values.toString());  }}