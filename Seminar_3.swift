print("Task_1 Seminar_3")

var Tea: [String: Int] = ["BlackTea": 100, "GreenTea": 80, "WhiteTea": 150, "RedTea": 130]
var Queue = ["RedTea", "BlackTea", "BlackTea", "RedTea", "WhiteTea", "GreenTea"]
print("Общее количество заказов: ")
print(Queue.count)
print("Очередность заказов: ")
for (index, element) in Queue.enumerated() {
            print(element + " " + String(index + 1) + "-й.")
}
print("Стоимость чая: ")
for(key, value) in Tea {
    print(key + " " + String(value) + " руб.")
//    print(value)
}

print("Task_2 Seminar_3")
