//
//  GlobalHelpers.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 09/05/2022.
//

import Foundation

let languageSelect1 = Language(
    languageTitle: "English",
    languageType: "American",
    imageName: "englishAmerican"
)

let languageSelect2 = Language(
    languageTitle: "English",
    languageType: "British",
    imageName: "telephone"
    )

let languageSelect3 = Language(
    languageTitle: "Chinese",
    languageType: "",
    imageName: "chineseLang"
    )
let languageSelect4 = Language(
    languageTitle: "Portuguese",
    languageType: "Brazil",
    imageName: "tucano")
let languageSelect5 = Language(
    languageTitle: "Spanish",
    languageType: "Spain",
    imageName: "spanish")

let languageSelect6 = Language(
    languageTitle: "German",
    languageType: "",
    imageName: "germanLanguage")


var languageSelection: [Language] {
    return [languageSelect1, languageSelect2, languageSelect3, languageSelect4, languageSelect5, languageSelect6]
}


//***** Courses
let course1Unit1 = Course(id: UUID().uuidString, name: "Greetings", image: "unit1greetings", color: "orangeGradient1")
let course2Unit1 = Course(id: UUID().uuidString, name: "Clothes", image: "unit1clothes", color: "greenGradient1")
let course3Unit1 = Course(id: UUID().uuidString, name: "Numbers", image: "unit1numbers", color: "orangeGradient2")
let course4Unit1 = Course(id: UUID().uuidString, name: "Food", image: "unit1fruits", color: "blueGradient1")




let coursesFromUnit1 : [Course] = [course1Unit1, course2Unit1, course3Unit1, course4Unit1]

