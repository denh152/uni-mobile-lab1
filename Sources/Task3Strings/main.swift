import Foundation
// Завдання №3: Робота з рядками
// Позиції символів у завданні — 1-based; у Swift індекси рядка 0-based.

var text = "Hello World. This is Swift programming language"

func idx(_ s: String, _ n: Int) -> String.Index {   // n-й символ (1-based)
    s.index(s.startIndex, offsetBy: n - 1)
}

// 1. Довжина рядка
print("1.  length = \(text.count)")

// 2. Замінити кожне "i" на "u"
text = text.replacingOccurrences(of: "i", with: "u")
print("2.  \(text)")

// 3. Видалити 4-й, 7-й та 10-й символи (позиції з поточного рядка; з кінця, щоб індекси не зсувались)
for n in [10, 7, 4] {
    text.remove(at: idx(text, n))
}
print("3.  \(text)")

// 4. Додати " (modified)"
text += " (modified)"
print("4.  \(text)")

// 5. Чи рядок порожній
print("5.  isEmpty = \(text.isEmpty)")

// 6. Додати "." в кінець
text.append(".")
print("6.  \(text)")

// 7. Починається з "Hello"
print("7.  hasPrefix(\"Hello\") = \(text.hasPrefix("Hello"))")

// 8. Закінчується на "world."
print("8.  hasSuffix(\"world.\") = \(text.hasSuffix("world."))")

// 9. Вставити "-" після 10-го символа
text.insert("-", at: text.index(text.startIndex, offsetBy: 10))
print("9.  \(text)")

// 10. Замінити "Thus us" на "It is"
text = text.replacingOccurrences(of: "Thus us", with: "It is")
print("10. \(text)")

// 11. 10-й та 15-й символи
print("11. 10th = \"\(text[idx(text, 10)])\", 15th = \"\(text[idx(text, 15)])\"")

// 12. Підрядок від 10-го (включно) до 15-го (не включно)
let sub = text[idx(text, 10)..<idx(text, 15)]
print("12. \"\(sub)\"")
