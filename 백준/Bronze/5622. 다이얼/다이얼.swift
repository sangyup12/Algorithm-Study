enum numCode: Int {
    case abc = 3
    case def = 4
    case ghi = 5
    case jkl = 6
    case mno = 7
    case pqrs = 8
    case tuv = 9
    case wxyz = 10
}


let alphabet = Array(readLine()!)

var count: Int = 0
let A = numCode.abc.rawValue

for i in 0..<alphabet.count {
    switch alphabet[i] {
    case "A", "B", "C":
        count += numCode.abc.rawValue
    case "D", "E", "F":
        count += numCode.def.rawValue
    case "G", "H", "I":
        count += numCode.ghi.rawValue
    case "J", "K", "L":
        count += numCode.jkl.rawValue
    case "M", "N", "O":
        count += numCode.mno.rawValue
    case "P", "Q", "R", "S":
        count += numCode.pqrs.rawValue
    case "T", "U", "V":
        count += numCode.tuv.rawValue
    case "W", "X", "Y", "Z":
        count += numCode.wxyz.rawValue
    default:
        break
    }
}

print(count)
