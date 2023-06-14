print("Task_1 Seminar_1")
var num = [Int]()
for i in 1...100 {
  if i % 2 == 0 {
    print(i)
  }
}

print("Task_2 Seminar_1")
var a: Int = 7
var b: Int = 20
if a * b > 10 {
    print(a)
}
    else if a * b == 10 {
        print("Crush")
}
    else if a * b < 10 {
        print(b)
}

print("Task_3 Seminar_1")
var k: Int = 9
for j in 10...50 {
  if j % 2 != 0 && (j + k) % 2 == 0 {
    print(k + 2)
  }
    else {
        print("Next")
    }
}

print("Task_4 Seminar_1")
var kNum: Int = 9
for l in 10...50 {
  if l % 2 != 0 && (l + kNum) % 2 == 0 {
    print(kNum + 1)
  }
    else {
        print("Next")
        break
    }
}
