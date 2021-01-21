//
//  main.swift
//  DZ_Les_2
//
//  Created by Алексей Белов on 21.01.2021.
//

import Foundation

func evenNumbers(_ number: Int, _ divider: Int) -> Bool{
    return (number % divider == 0 ?     true : false)
}

func createdArr(_ numberLeght: Int) -> [Int] {
    var newArray = [Int]()
    for i in 1...numberLeght {
        newArray.append(i)
    }
    return newArray
}

func arrDelite(_ arrNumber: inout [Int], _ divider1: Int, _ divider2: Int ) -> [Int] {
    if !arrNumber.isEmpty {
        for i in stride(from: arrNumber.count-1, to: 0, by: -1) {
            if evenNumbers(arrNumber[i], divider1) || evenNumbers(arrNumber[i], divider2) {
                arrNumber.remove(at: i)
            }
        }
    }
    return arrNumber
}

func numberFibonachi(_ namberLenght: Int) -> [Float80] {
    var newArr = [Float80]()
    
    for i in 0...namberLenght{
        if newArr.isEmpty {
            newArr.append(Float80(i))
        }else if newArr.count == 1{
            newArr.append(newArr[i-1]+1)
        }else{
            newArr.append(newArr[i-2]+newArr[i-1])
        }
    }
    return newArr
}

print(evenNumbers(3,3))
var arrnumber: [Int] = createdArr(10)
print(arrnumber)
print(arrDelite(&arrnumber,2,3))
print(numberFibonachi(100))



