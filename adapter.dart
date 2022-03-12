import 'dart:math' as math;

//Interface where Client work with
abstract class IGraph {
  void Point(double r, double t);
}

//Class Adaptee which have function developed
class PolarGraph {
  void Point(double r, double t) {
    print('Polar Coordinate Point: P($r, $t)');
  }
}

//Class Adapter where convert input from client to class adaptee, implement Interface that Client work with
class PolarGraphAdapter implements IGraph {
  //Adaptee class
  PolarGraph _obj;

  PolarGraphAdapter(PolarGraph polarGraph) {
    _obj = polarGraph;
  }

  //Convert input from client and call corresponding function from adaptee
  @override
  void Point(double x, double y) {
    final r = math.sqrt(x * x + y * y);
    final t = math.atan2(y, x);

    _obj.Point(r, t);
  }
}

void main() {
  //Construc adaptee
  final polarGraph = PolarGraph();
  //Create an interface and initialize it with an Adapter
  IGraph graph = PolarGraphAdapter(polarGraph);
  //Client call function with their input
  graph.Point(3, 4);
}
