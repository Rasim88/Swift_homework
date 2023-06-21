print("Task_1 - 4 Seminar_5")

protocol OpenCloseProtocol {
    mutating func open()
    mutating func close()
}

extension FrenchFries: OpenCloseProtocol {
    func open() {
        print("Opening the french fries container...")
    }
    
    func close() {
        print("Closing the french fries container...")
    }
}

extension Pizza: OpenCloseProtocol {
    func open() {
        print("Opening the pizza box...")
    }
    
    func close() {
        print("Closing the pizza box...")
    }
}

extension PizzaShop: OpenCloseProtocol {
    func open() {
        print("Welcome to our pizza shop! We are now open")    }

    func shopIsOpened() {
        print("We are now closed. Thank you for your visit!")
    }
}

struct FrenchFries {
    let price: Double
    let size: String
    
    init(price: Double, size: String) {
        self.price = price
        self.size = size
    }
}

struct Pizza {
    let price: Double
    let crust: CrustType
    let toppings: [Toppings]
    let type: PizzaType
    
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
}

enum Toppings: String {
    case extraCheese
    case pepperoni
    case mushrooms
    case onions
    case olives
    case peppers
}

struct MenuPosition {
    let name: String
    let price: Double
}

class PizzaShop {
    private var items: [Any]
    private var menu: [MenuPosition]
    
    init(items: [Any], menu: [MenuPosition]) {
        self.items = items
        self.menu = menu
    }
    
    func addItem(item: Any) {
        items.append(item)
    }
    
    func getAllItems() -> [Any] {
        return items
    }
    
    func addMenuPosition(name: String, price: Double) {
        let menuPosition = MenuPosition(name: name, price: price)
        menu.append(menuPosition)
    }
    
    func getMenu() -> [MenuPosition] {
        return menu
    }
    
    func close() {
        print("We are closing the shop…")
    }
}

let margherita = Pizza(price: 8.99, crust: .thin, toppings: [.extraCheese], type: .margherita)
margherita.open()
margherita.close()
let pepperoni = Pizza(price: 10.99, crust: .thick, toppings: [.extraCheese, .mushrooms], type: .pepperoni)
let hawaiian = Pizza(price: 12.99, crust: .thin, toppings: [.onions, .olives], type: .hawaiian)
let meatLover = Pizza(price: 14.99, crust: .thick, toppings: [.mushrooms, .olives, .peppers], type: .meatLover)
let veggie = Pizza(price: 11.99, crust: .thin, toppings: [.peppers, .mushrooms], type: .veggie)

let frenchFries = FrenchFries(price: 4.99, size: "Medium")
frenchFries.open()
frenchFries.close()

let pizzaShop = PizzaShop(items: [margherita, pepperoni, hawaiian, meatLover, veggie], menu: [MenuPosition(name: "French Fries", price: frenchFries.price)])
pizzaShop.addMenuPosition(name: "Garlic Bread", price: 6.99)
pizzaShop.addItem(item: Pizza(price: 9.99, crust: .thin, toppings: [.onions], type: .meatLover))
pizzaShop.addItem(item: Pizza(price: 13.99, crust: .thick, toppings: [.peppers, .olives], type: .pepperoni))

for item in pizzaShop.getAllItems() {
    if let pizza = item as? Pizza {
        print("Type: \(pizza.type.rawValue), Price: $\(pizza.price), Crust Type: \(pizza.crust.rawValue), Toppings: \(pizza.toppings.map { $0.rawValue })")
    }
    
    if let frenchFries = item as? FrenchFries {
        print("Type: French Fries, Size: \(frenchFries.size), Price: $\(frenchFries.price)")
    }
}

print("Menu:")
for menu in pizzaShop.getMenu() {
    print("Name: \(menu.name), Price: $\(menu.price)")
}

print("Task_5 Seminar_5")

func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}
