print("Task_1 - 3 Seminar_6")

protocol OpenCloseProtocol {
    func open()
    func close()
}

struct Employee {
    let name: String
    let salary: Double
    let position: Position
}

enum Position {
    case cashier
    case cook
}

class Table {
    let capacity: Int
    var cafe: PizzaShop?
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func isAvailable(forGuests guests: Int) -> Bool {
        return guests <= capacity
    }
}

class PizzaShop: OpenCloseProtocol {
    private var items: [Any]
    private var menu: [MenuPosition]
    var employees: [Employee]
    var tables: [Table]
    
    init(items: [Any], menu: [MenuPosition], employees: [Employee], tableCapacities: [Int]) {
        self.items = items
        self.menu = menu
        self.employees = employees
        self.tables = tableCapacities.map { Table(capacity: $0) }
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
    
    func open() {
        print("Welcome to our pizza shop! We are now open")
    }
    
    func close() {
        print("We now. Thank you for your visit!")
    }
}

struct MenuPosition {
    let name: String
    let price: Double
}

class Pizza {
    let price: Double
    let crust: CrustType
    let toppings: [Topping]
    let type: TypePizza
    
    init(price: Double, crust: CrustType, toppings: [Topping], type: TypePizza) {
        self.price = price
        self.crust = crust
        self.toppings = toppings
        self.type = type
    }
    
    func open() {
        print("Enjoy our delicious pizza!")
    }
    
    func close() {
        print("We hope you enjoyed our pizza!")
    }
}

enum CrustType: String {
    case thin = "Thin"
    case thick = "Thick"
}

enum Topping: String {
    case onions = "Onions"
    case mushrooms = "Mushrooms"
    case olives = "Olives"
    case extraCheese = "Extra Cheese"
    case peppers = "Peppers"
}

enum TypePizza: String {
    case margherita = "Margherita"
    case pepperoni = "Pepperoni"
    case hawaiian = "Hawaiian"
    case meatLover = "Meat Lover"
    case veggie = "eggie"
}

class FrenchFries {
    let price: Double
    let size: String
    
    init(price: Double, size: String) {
        self.price = price
        self.size = size
    }
    
    func open() {
        print("Enjoy our delicious French fries!")
    }
    
    func close() {
        print("We hope you enjoyed our French fries!")
    }
}

let margherita = Pizza(price: 8.99, crust: .thin, toppings: [.extraCheese], type: .margherita)
margherita.open()
margherita.close()

let pepperoni = Pizza(price: 10.99, crust: .thick, toppings: [.extraCheese, .mushrooms], type: .pepperoni)
let hawaiian = Pizza(price: 12.99, crust: .thin, toppings: [.onions, .olives], type: .hawaiian)
let meatlover = Pizza(price: 14.99, crust: .thick, toppings: [.mushrooms, .olives, .peppers], type: .meatLover)
let veggie = Pizza(price: 11.99, crust: .thin, toppings: [.peppers, .mushrooms], type: .veggie)

let frenchFries = FrenchFries(price: 4.99, size: "Medium")
frenchFries.open()
frenchFries.close()

let employees = [
    Employee(name: "John Smith", salary: 10.0, position: .cashier),
    Employee(name: "Jane Doe", salary:15.0, position: .cook)
]

let tableCapacities = [4, 6, 8]
let tables = tableCapacities.map { Table(capacity: $0) }

let pizzaShop = PizzaShop(items: [margherita, pepperoni, hawaiian, veggie, frenchFries], menu: [], employees: employees, tableCapacities: tableCapacities)

pizzaShop.open()

let menuItems = [
    MenuPosition(name: "Margherita", price: 8.99),
    MenuPosition(name: "Pepperoni", price: 10.99),
    MenuPosition(name: "Hawaiian", price: 12.99),
    MenuPosition(name: "Meat Lover", price: 14.99),
    MenuPosition(name: "Veggie", price: 11.99),
    MenuPosition(name: "French Fries", price: 4.99)]

for menuItem in menuItems {
    pizzaShop.addMenuPosition(name: menuItem.name, price: menuItem.price)
        }

let menu = pizzaShop.getMenu()
print("Our menu:")
for item in menu {
    print("\(item.name) - \(item.price)$")
    }

let table1 = pizzaShop.tables[0]
let table2 = pizzaShop.tables[1]
let table3 = pizzaShop.tables[2]

let isAvailableTable1 = table1.isAvailable(forGuests: 5)
if isAvailableTable1 {
    print("Table 1 is available!")
    } else {
    print("Table 1 is not available")
    }

let isAvailableTable2 = table2.isAvailable(forGuests: 9)
if isAvailableTable2 {
    print("Table 2 is available!")
    } else {
    print("Table 2 is not available")
    }

let isAvailableTable3 = table3.isAvailable(forGuests: 2)
if isAvailableTable3 {
    print("Table 3 is available!")
    } else {
    print("Table 3 is not available")
    }

pizzaShop.close()

// Вывод:
// Enjoy our delicious pizza!
// We hope you enjoyed our pizza!
// Enjoy our delicious French fries!
// We hope you enjoyed our French fries!
// Welcome to our pizza shop! We are now open
// Our menu:
// Margherita - 8.99$
// Pepperoni - 10.99$
// Hawaiian - 12.99$
// Meat Lover - 14.99$
// Veggie - 11.99$
// French Fries - 4.99$
// Table 1 is not available
// Table 2 is not available
// Table 3 is available!
// We now. Thank you for your visit!
