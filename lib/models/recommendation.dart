class Recommendation {
  final String? name, source, text, title;

  Recommendation({this.name, this.source, this.text, this.title,});
}

final List<Recommendation> recommendations =[
  Recommendation(
    name: 'Daniel Romero',
    title: 'Solution Architec and CEO',
    source: 'EurekaTic',
    text:  "I have had the pleasure of working with Jose for about 3 years on flutter projects and what strikes me the most about his work is his ability to write clean and reusable codes with best practices. He is hardworking and makes it so easy to transcribe ideas into beautiful and testable flutter apps. He is a Flutter/Dart gem and has my highest recommendation",
  ),

  Recommendation(
    name: 'Aaron Cunningham',
    title: 'VP – Engineering',
    source: 'Synerio',
    text:  "It has been a privilege working with you this past year. You are an asset, and both your adept development skills and boundless enthusiasm are truly irreplaceable. I am hopeful and content knowing that you will succeed and make a difference wherever the future takes you. Your future career will be bright",
  )
];