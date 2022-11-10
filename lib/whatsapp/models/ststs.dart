class StatusModel {
  final String name;
  final String  time;
  final String pic;
  StatusModel(this.name, this.time, this.pic);
}

// ignore: non_constant_identifier_names
var StatusData = <StatusModel>[
   StatusModel(
      "Sam", '12:30 PM', 'https://www.shutterstock.com/image-photo/portrait-young-handsome-man-smiling-600w-213159280.jpg'),
   StatusModel("Joseph ", 'Yesterday',
      'https://www.shutterstock.com/image-photo/portrait-happy-senior-man-smiling-600w-1247868448.jpg'),
   StatusModel("Ann Maria", 'Yesterday',
      'https://www.shutterstock.com/shutterstock/photos/1914397318/display_1500/stock-photo-happy-brunette-beautiful-woman-on-isolated-background-aside-copy-space-1914397318.jpg'),
  StatusModel(
      "Nehal", 'Yesterday', 'https://www.shutterstock.com/shutterstock/photos/1296926047/display_1500/stock-photo-attractive-young-girl-wearing-casual-smiling-broadly-to-camera-in-positive-human-emotions-joy-and-1296926047.jpg'),
  StatusModel(
      "Mohamad", 'Yesterday', 'https://www.shutterstock.com/image-photo/colorful-flower-on-dark-tropical-600w-721703848.jpg'),
   StatusModel(
      "Roni", 'Yesterday', 'https://www.shutterstock.com/image-photo/mountains-during-sunset-beautiful-natural-600w-407021107.jpg'),
];