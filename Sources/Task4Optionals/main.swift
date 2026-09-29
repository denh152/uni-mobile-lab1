// Завдання №4: Optionals

// 1–2. Optional без значення за замовчуванням
var integerNumber: Int?
var decimalNumber: Double?
print("1-2. integerNumber = \(String(describing: integerNumber)), decimalNumber = \(String(describing: decimalNumber))")

// 3. Присвоїти значення integerNumber
integerNumber = 10
print("3.  integerNumber = \(integerNumber!)")

// 4. Додати те ж значення (у Swift 3+ ++/-- видалені, тому compound-оператор +=)
integerNumber! += integerNumber!
print("4.  integerNumber = \(integerNumber!)")

// 5. Змінити знак на протилежний (unary minus)
integerNumber = -integerNumber!
print("5.  integerNumber = \(integerNumber!)")

// 6. decimalNumber = значення integerNumber (потрібне явне перетворення типу)
decimalNumber = Double(integerNumber!)
print("6.  decimalNumber = \(decimalNumber!)")

// 7. pairOfValues: містить або не містить integerNumber та decimalNumber
let pairOfValues: (integerNumber: Int?, decimalNumber: Double?) = (integerNumber, decimalNumber)

// 8. Чи містить ціле значення — вивести
if let value = pairOfValues.integerNumber {
    print("8.  integer value = \(value)")
}

// 9. Чи містить значення з плаваючою крапкою — вивести
if let value = pairOfValues.decimalNumber {
    print("9.  decimal value = \(value)")
}

// 10. Optional binding для decimalNumber
if let number = decimalNumber {
    print("10. decimalNumber = \(number)")
} else {
    print("10. decimalNumber is nil")
}
