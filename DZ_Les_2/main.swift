//
//  main.swift
//  DZ_Les_2
//
//  Created by Алексей Белов on 21.01.2021.
//

import Foundation

func evenNumbers(_ number: Int, _ divider: Int) -> Bool{
    return (number % divider == 0 ? true : false)
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

func сheckTheNumber(_ i: Int,_ newArr: [Float80]) -> Bool{
    if !newArr.isEmpty {
        for (_ , value) in newArr.enumerated(){
            if evenNumbers(i, Int(value)) {
                return false
            }
        }
    }
    return true
}

func simpleNumber(_ namberLenght: Int)-> [Float80] {
    var newArr = [Float80]()

    newArr.append(Float80(2))
    
    while Int(newArr.count) < namberLenght {
        for i in (Int(newArr.count) <= 2 ? 3...5 : Int(newArr.count)...Int(pow(Double(newArr.count),Double(newArr.count))))
                    where  сheckTheNumber(i, newArr) {
                newArr.append(Float80(i))
            if Int(newArr.count) == namberLenght {
                return newArr
            }
        }
    }
    
    
    
//    for i in 2...(namberLenght + 2) where сheckTheNumber(i, newArr) {
//        newArr.append(Float80(i))
//    }

    return newArr
}

print(evenNumbers(3,3))
var arrnumber: [Int] = createdArr(10)
print(arrnumber)
print(arrDelite(&arrnumber,2,3))
print(numberFibonachi(100))
print(simpleNumber(600))



