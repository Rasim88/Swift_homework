print("Task_1 - 5 Seminar_4")

struct Pizza {
    let price: Double
    let crust: CrustType
    let toppings: [Toppings]
    
    enum CrustType: String {
        case thin
        case thick
    }
    
    enum PizzaType: String {
         case margherita
         case pepperoni
         case hawaiian
         case meatLover
         case veggie
     }
     
     let type: PizzaType
}

enum Toppings: String {
    case extraCheese
    case pepperoni
    case mushrooms
    case onions
    case olives
    case peppers
}

class PizzaShop {
    private var pizzas: [Pizza]
    
    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }
    
    func addPizza(pizza: Pizza) {
        pizzas.append(pizza)
    }
    
    func getAllPizzas() -> [Pizza] {
        return pizzas
    }
}

let margherita = Pizza(price: 8.99, crust: .thin, toppings: [.extraCheese], type: .margherita)
let pepperoni = Pizza(price: 10.99, crust: .thick, toppings: [.extraCheese, .mushrooms], type: .pepperoni)
let hawaiian = Pizza(price: 12.99, crust: .thin, toppings: [.onions, .olives], type: .hawaiian)
let meatLover = Pizza(price: 14.99, crust: .thick, toppings: [.mushrooms, .olives, .peppers], type: .meatLover)
let veggie = Pizza(price: 11.99, crust: .thin, toppings: [.peppers, .mushrooms], type: .veggie)

let pizzaShop = PizzaShop(pizzas: [margherita, pepperoni, hawaiian, meatLover, veggie])
pizzaShop.addPizza(pizza: Pizza(price: 9.99, crust: .thin, toppings: [.onions], type: .meatLover))
pizzaShop.addPizza(pizza: Pizza(price: 13.99, crust: .thick, toppings: [.peppers, .olives], type: .pepperoni))

for pizza in pizzaShop.getAllPizzas() {
    print("Type: \(pizza.type.rawValue), Price: $\(pizza.price), Crust Type: \(pizza.crust.rawValue), Toppings: \(pizza.toppings.map { $0.rawValue })")
}
// Вывод:
// Task_1 - 5 Seminar_4
// Type: margherita, Price: $8.99, Crust Type: thin, Toppings: ["extraCheese"]
// Type: pepperoni, Price: $10.99, Crust Type: thick, Toppings: ["extraCheese", "mushrooms"]
// Type: hawaiian, Price: $12.99, Crust Type: thin, Toppings: ["onions", "olives"]
// Type: meatLover, Price: $14.99, Crust Type: thick, Toppings: ["mushrooms", "olives", "peppers"]
// Type: veggie, Price: $11.99, Crust Type: thin, Toppings: ["peppers", "mushrooms"]
// Type: meatLover, Price: $9.99, Crust Type: thin, Toppings: ["onions"]
// Type: pepperoni, Price: $13.99, Crust Type: thick, Toppings: ["peppers", "olives"]
