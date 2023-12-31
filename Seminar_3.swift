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

var array: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
print("Дан массив, содержащий опционалы: ")
print(array)
let filteredArray = array.compactMap{ $0 }.filter { $0 != 0 && $0 != 4 }
print("Удалили из массива значения nil, 0, 4: ")
print(filteredArray)
print("Cортируем массив по возрастанию: ")
let sortedArray = filteredArray.sorted()
print(sortedArray)

print("Task_3 Seminar_3")

func generateArray(of number: Int) -> [Int] {
    var result = [Int]()
    var value = 1
    
    for _ in 1...number {
        result.append(value)
        value *= 2
    }
    
    return result
}

let arrayOfNum = generateArray(of: 13)

print("На вход приняли число: 13. Количество элементов массива соотвествует: 13. Массив начинается с числа: 1. Каждый последующий элемент больше предыдущего в 2 раза.")
print("Массив из чисел: ")
print(arrayOfNum)
