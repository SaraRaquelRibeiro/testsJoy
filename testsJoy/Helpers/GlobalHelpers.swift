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
//****UNIT 1
let course1Unit1 = Course(id: UUID().uuidString, name: "Greetings", image: "unit1greetings", color1: "orangeGradient1", color2: "orangeGradient2", imageLevel: "gem1",
                          coordinateX: 100.0, coordinateY: 300)
let course2Unit1 = Course(id: UUID().uuidString, name: "Clothes", image: "unit1clothes", color1: "orangeGradient1", color2: "orangeGradient2", imageLevel: "gem2",
                          coordinateX: 140, coordinateY: 400)
let course3Unit1 = Course(id: UUID().uuidString, name: "Numbers", image: "unit1numbers", color1: "orangeGradient1", color2: "orangeGradient2", imageLevel: "gem3",
                          coordinateX: 200, coordinateY: 550)
let course4Unit1 = Course(id: UUID().uuidString, name: "Food", image: "unit1fruits", color1: "orangeGradient1", color2: "orangeGradient2", imageLevel: "gem4",
                          coordinateX: 250, coordinateY: 700)

//****UNIT 2
let course1Unit2 = Course(id: UUID().uuidString, name: "Greetings", image: "unit1greetings", color1: "pinkGradient2", color2: "pinkGradient1", imageLevel: "gem1",
                          coordinateX: 100, coordinateY: 300)
let course2Unit2 = Course(id: UUID().uuidString, name: "Clothes", image: "unit1clothes", color1: "pinkGradient2", color2: "pinkGradient1", imageLevel: "gem2",
                          coordinateX: 100, coordinateY: 300)
let course3Unit2 = Course(id: UUID().uuidString, name: "Numbers", image: "unit1numbers", color1: "pinkGradient2", color2: "pinkGradient1", imageLevel: "gem3",
                          coordinateX: 100, coordinateY: 300)
let course4Unit2 = Course(id: UUID().uuidString, name: "Food", image: "unit1fruits", color1: "pinkGradient2", color2: "pinkGradient1", imageLevel: "gem4",
                          coordinateX: 100, coordinateY: 300)

let coursesFromUnit1 : [Course] = [course1Unit1, course3Unit1, course2Unit1, course4Unit1]
let coursesFromUnit2 : [Course] = [course1Unit2, course3Unit2, course2Unit2, course4Unit2]

let unit1 : Unit = Unit(id: UUID().uuidString, name: "Unit 1", courses: coursesFromUnit1, description: "Learn 100 more used words to use when Travelling", badgeName: "awardUnit1", color: "blueGradient2", lock: "lock1")
let unit2 : Unit = Unit(id: UUID().uuidString, name: "Unit 2", courses: coursesFromUnit2, description: "200 more used words to use with your new friends", badgeName: "awardUnit2", color: "pinkGradient1", lock: "lock")

let staticAllUnits : [Unit] = [unit1, unit2]


//***** Daily challenges
let dailyChallenge1 = DailyChallenge(id: UUID().uuidString, name: "Learn 10 New Words", image: "brainMeditation", color: "pinkGradient1", win: "")
let dailyChallenge2 = DailyChallenge(id: UUID().uuidString, name: "Say Hi", image: "brainMuscle", color: "blueGradient2", win: "")
