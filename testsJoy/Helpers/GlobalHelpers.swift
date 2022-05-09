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
    imageName: "englishAmerican")

let languageSelect2 = Language(
    languageTitle: "English",
    languageType: "British",
    imageName: "telephone")

let languageSelect3 = Language(
    languageTitle: "Chinese",
    languageType: "",
    imageName: "chineseLang")

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
