
class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> projects= [
  Project(
    title: 'Synerio Patient Portal',
    description: 'Patient Portal where you can collect, manage and share your health data.'
  ),
  Project(
    title: 'Graphroute',
    description: "GraphRoute: Simplify route management, optimize schedules, and maximize resources. Reduce costs, increase customer satisfaction, and deliver more with fewer resources. Choose GraphRoute for efficient route management."
  ),
  Project(
    title: "Graphroute Conductor",
    description: "Mobile app where drivers can get the shortest route from point 'a' to point 'b', where they can fill a form for the initial preps of the vehicle every morning before they start their routes and get in touch with the persons who is waiting for the package",
  ),
  Project(
    title: "Mi Ruta Tescotur",
    description: "Mobile app where you can check the status of your package, the realtime position of the vehicle, speed, and where you can get in touch with the driver helper by notifications or chat directly in case that you need it.",
  )
];