//
//  Languages.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 06/05/2022.
//

import Foundation
import SwiftUI


struct Language : Identifiable {
    let id = UUID()
    let languageTitle : String
    let languageType : String
    let imageName : String
   
}


struct LanguagesList {
    
    static let chooselanguage = [
    Language(
        languageTitle: "English",
        languageType: "American",
        imageName: "englishAmerican"
        
    ),
    Language(
        languageTitle: "English",
        languageType: "British",
        imageName: "telephone"
        
    ),
    Language(
        languageTitle: "Chinese",
        languageType: "",
        imageName: "chineseLang"
    ),
    Language(
        languageTitle: "Portuguese",
        languageType: "Brazil",
        imageName: "tucano"
    ),
    Language(
        languageTitle: "Spanish",
        languageType: "Spain",
        imageName: "spanish"
    ),
    Language(
        languageTitle: "German",
        languageType: "",
        imageName: "germanLanguage"
    )
    ]
    
}
