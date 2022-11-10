class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String pic;

  ChatModel(this.name, this.msg, this.time, this.pic);
}

var chatsData = <ChatModel>[
  ChatModel('Sam', 'Busy', '10.30 PM',
      'https://www.shutterstock.com/image-photo/portrait-young-handsome-man-smiling-600w-213159280.jpg'),
  ChatModel(
      "Rona",
      'hiiii',
      '10:00 AM',
      'https://www.shutterstock.com/image-photo/mountains-during-sunset-beautiful-natural-600w-407021107.jpg'),
   ChatModel(
      "Soja Ram",
      'HELLOO ',
      '09:00 AM',
      'https://www.shutterstock.com/image-illustration/modern-retro-abstract-floral-background-600w-1658322181.jpg'),
   ChatModel(
      "Rajesh",
      'at school',
      '10:30 AM',
      'https://www.shutterstock.com/image-photo/portrait-mature-businessman-wearing-glasses-600w-738242395.jpg'),
   ChatModel("Sonu", 'hiii  ',
      '12:30 PM', 'https://www.shutterstock.com/image-photo/little-dog-owner-spend-day-600w-511107457.jpg'),
  // ignore: unnecessary_new
   ChatModel(
      "Joseph",
      'hello',
      'Yesterday',
      'https://www.shutterstock.com/image-photo/portrait-happy-senior-man-smiling-600w-1247868448.jpg'),
  ChatModel(
      "Tonny",
      'how?',
      'Yesterday',
      'https://www.shutterstock.com/image-photo/dog-paws-spot-form-heart-600w-695184616.jpg'),

];