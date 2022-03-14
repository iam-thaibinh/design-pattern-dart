enum PizzaSize {
  S,
  M,
  L,
  XL,
}

enum PizzaSauce {
  none,
  marinara,
  garlic,
}

enum PizzaCrust {
  classic,
  deepDish,
}

class PizzaBuilder {
  PizzaSize size;
  PizzaCrust crust;
  PizzaSauce sauce;
  List<String> toppings;
  bool hasExtraCheese;
  bool hasDoubleMeat;
  String notes;
}

class Pizza {
  final PizzaSize size;
  final PizzaCrust crust;
  final PizzaSauce sauce;
  final List<String> toppings;
  final bool hasExtraCheese;
  final bool hasDoubleMeat;
  final String notes;

  Pizza(PizzaBuilder builder)
      : size = builder.size,
        crust = builder.crust,
        sauce = builder.sauce,
        toppings = builder.toppings,
        hasExtraCheese = builder.hasExtraCheese,
        hasDoubleMeat = builder.hasDoubleMeat,
        notes = builder.notes;
}

void main() {
  final builder = PizzaBuilder()
    ..size = PizzaSize.M
    ..crust = PizzaCrust.classic
    ..sauce = PizzaSauce.marinara
    ..toppings = ['pepperoni, olives']
    ..hasExtraCheese = false
    ..hasDoubleMeat = false;

  final pizza = Pizza(builder);
}
