//
//  main.swift
//  ClosureExample
//
//  Created by Nikita Sandhu on 2020-02-14.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation

func add(a : Int, b : Int) {
    print(a + b)
}

add(a: 10, b: 20)

var f : (Int, Int) -> Void
f = add

f(10,40)

func test(a : Int, b : (Int, Int) -> Void){
    b(a, 10)
}

test(a: 20, b: f)

var country = ["Canada", "Abd", "India", "Bhutan", "Nepal", "Chine", "USA", "Mexico"]

func mySort(s1: String, s2: String) ->Bool{
    return s1 > s2
}

print(mySort(s1: "abc", s2: "aac"))

print(country)
//country.sort()
//let c = country.sorted()
//print(country)
//print(c)

//country.sort(by: mySort(s1:s2:))
country.sort(by:
    { (s1 : String, s2 : String) -> Bool in
            return s1 > s2
    })

country.sort(by:
{ (s1 , s2) -> Bool in
        return s1 > s2
})

country.sort(by:
{ s1, s2 -> Bool in
        return s1 > s2
})

country.sort(by:
{ s1, s2 in
        return s1 > s2
})

country.sort(by:
{
        return $0 > $1
})

country.sort(by: > )

print(country)

country.sort(by: < )

print(country)

var s = country.map { (str) -> String in
    if str.count == 5{
        return str
    }
    return String()
}

print(s)

s = country.map{(str) -> String in
    return "\(str.count) - \(str)"
}

print(s)

var c = country.filter{(str) -> Bool in
    return str.count == 5
}

print(c)

country.removeAll { (str) -> Bool in
    return str.count == 5
}

print(country)
