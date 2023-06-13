print("Task_1 Seminar_2")



print("Task_2 Seminar_2")

enum Pizza: CaseIterable {
  case margherta, diabola, hawaii
}

for currentPizza in Pizza.allCases {
  print(currentPizza)
}

print("Task_3 Seminar_2")

enum Pizza_raw: String {
    case margherita = "Margherita"
    case diabola = "Diabola"
    case hawaii = "Hawaii"
}
func getName(pizza: Pizza_raw) -> String {
    pizza.rawValue
}
print(getName(pizza: .margherita))
print(getName(pizza: .diabola))
print(getName(pizza: .hawaii))
