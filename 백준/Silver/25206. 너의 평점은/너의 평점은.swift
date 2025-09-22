var subject = [[Substring]]()
var point = [Double]()
var grade = [String]()

for i in 0..<20 {
    subject.append(readLine()!.split(separator: " "))
    point.append(Double(subject[i][1])!) //학점
    grade.append(String(subject[i][2])) //등급
}

var gradeToPoint = [Double]()

for i in 0..<20 {
    switch grade[i] {
    case "A+":
        gradeToPoint.append(4.5)
    case "A0":
        gradeToPoint.append(4.0)
    case "B+":
        gradeToPoint.append(3.5)
    case "B0":
        gradeToPoint.append(3.0)
    case "C+":
        gradeToPoint.append(2.5)
    case "C0":
        gradeToPoint.append(2.0)
    case "D+":
        gradeToPoint.append(1.5)
    case "D0":
        gradeToPoint.append(1.0)
    case "F":
        gradeToPoint.append(0.0)
    case "P":
        gradeToPoint.append(0)
    default:
        print("표준밖 범위")
    }
}

var sum = Double()

for i in 0..<20 {
    sum += point[i]*gradeToPoint[i]
}

var sumPoint = Double()

for i in 0..<20 {
    if subject[i][2] != "P" {
        sumPoint += point[i]
    }
}

let result = sum/sumPoint
print(result)
