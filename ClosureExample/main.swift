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

