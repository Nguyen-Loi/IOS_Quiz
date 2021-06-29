//
//  Questions.swift
//  AppEnglish
//
//  Created by CNTT on 6/5/21.
//  Copyright © 2021 fit.tdc.vn. All rights reserved.
//

import Foundation

struct Questions {
    let text: String
    

    let answers: [String]

    let rightAnswer: String
    

    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
