# Swift_homework_1 (Введение в синтаксис языка Swift)

1. Вывести в консоль все четные числа от 0 до 100, включая 0
2. Создать две переменных, одна равна 7, другая 20. Если результат перемножения этих переменных больше 10, то вывести в консоль первую переменную, в противном случае вывести вторую.
3. Создайте переменную “k”, равную 9. В диапазоне от 10 до 50, но только по нечетным числам,, если текущее число плюс “k” четное, то увеличьте  “k” на 2, в противном случае выведите в консоль “Next ” и перейдите к следующей итерации
4. Создайте переменную “k”, равную 9. В диапазоне от 10 до 50, но только по нечетным числам,, если текущее число плюс “k” четное, то увеличьте  “k” на 1, в противном случае выведите в консоль “Next ” прекратите выполнение цикла

# Swift_homework_2 (Функции, опционалы, перечисления)

1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой  процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу
2. Создать перечисление, которое содержит 3 вида пиццы и создать  переменные с каждым видом пиццы.
3. Добавить возможность получения названия пиццы через  rawValue

# Swift_homework_3 (Коллекции и замыкания)

1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать). Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал и стоимость).
2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.
3. Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.

# Swift_homework_4 (Классы и структуры)

1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
3. Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.
4. Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.
5. Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.

# Swift_homework_5 (Протоколы, расширения и универсальные шаблоны)

1. В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню
3. Создайте протокол, в котором будут содержаться функции открытия и закрытия
4. Написать расширение для класса пиццерии, в  котором будет реализован протокол из пункта 3
5. Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания

# Swift_homework_6 (ARC и управление памятью)

1. Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность.
Должностей пока может быть две: или кассир, или повар.
Добавить в класс пиццерии массив с работниками.
2. Создать класс столика. В нём должны быть свойство, в котором содержится количество мест, и функция, которая на вход принимает количество гостей, которое хотят посадить, возвращает true, если места хватает, и false, если места не хватает. Изначальное количество мест задаётся в инициализаторе.
3. Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится кафе, в котором стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.
