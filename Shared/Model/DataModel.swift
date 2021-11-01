//
//  SwiftUIView.swift
//  Complex UI4 (iOS)
//
//  Created by Mac on 01/11/2021.
//

import SwiftUI

struct DataModel  {
    
    
    var name:String
    var price:String
    var content:String
    var calories:String
    var expand:[String]
    var color : Color
    var iamge:String
}

var Fruitdata  = [
                        DataModel(name: "Breaking Bnanna", price:"$5/Dozen" , content:
                                  "Bananas are incredibly healthy, convenient, delicious, and one of the most inexpensive fresh fruits you can buy. This makes them an excellent choice for anyone interested in eating healthy.", calories: "89", expand: ["0.3 g","23 g","1.1 g"], color: Color("ban"), iamge: "ban"),
                        
                        DataModel(name: "Amazing Avacados", price: "$25/Kg", content: "Avocados are a source of vitamins C, E, K, and B6, as well as riboflavin, niacin, folate, pantothenic acid, magnesium, and potassium. They also provide lutein, beta carotene, and omega-3 fatty acids. Avocados contain high levels of healthy, beneficial fats, which can help a person feel fuller between meals.", calories: "160", expand: ["15 g","45 g","23 g"], color: Color("ava"), iamge: "ava"),
                        
                        DataModel(name: "Seductive Strawberry", price: "$100/Kg", content: "These potent little packages protect your heart, increase HDL (good) cholesterol, lower your blood pressure, and guard against cancer. Packed with vitamins, fiber, and particularly high levels of antioxidants known as polyphenols, strawberries are a sodium-free, fat-free, cholesterol-free, low-calorie food.", calories: "33", expand: ["123 g ","345 g","32 g"], color: Color("stra"), iamge: "stra")

]
