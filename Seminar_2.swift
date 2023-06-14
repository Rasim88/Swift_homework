import Foundation

print("Task_1 Seminar_2")

let depositAmount = 10000
print("Сумма вклада: \(depositAmount)")

let annualRate = 5
print("Годовая ставка по депозиту: \(annualRate)")

let placementPeriod = 365
print("Срок размещения денежных средств (в днях): \(placementPeriod)")

let days = 365
print("Число дней в году: \(days)")

func accruedInterest(depositAmount: Int, annualRate: Int, placementPeriod: Int, days: Int) -> Int {
    return (depositAmount * annualRate * placementPeriod / days) / 100
}

let interest = accruedInterest(depositAmount: depositAmount, annualRate: annualRate, placementPeriod: placementPeriod, days: days)
print("Накопленные проценты: \(interest)")

print("Task_2 Seminar_2")

enum Pizza: CaseIterable {
  case margherita, diabola, hawaii
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
