//
//  QuizBrain.swift
//  AppEnglish
//
//  Created by CNTT on 6/5/21.
//  Copyright © 2021 fit.tdc.vn. All rights reserved.
//

import Foundation

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    let quiz = [
        Questions(q: "Đâu là 'nước'?", a: ["Heart", "Skin", "Water", "Food"], correctAnswer: "Water"),
        Questions(q: "Hello", a: ["Xin chào", "Xin lỗi", "Cảm ơn", "Github"], correctAnswer: "Xin chào"),
        Questions(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time", "HongLoi"], correctAnswer: "Greenwich Mean Time"),
        Questions(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet", "ThanhLam"], correctAnswer: "Chapeau"),
        Questions(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch","TrungNghia"], correctAnswer: "Watch"),
        Questions(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir","TruongSinh"], correctAnswer: "Adiós"),
        Questions(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue", "ThanhDuy"], correctAnswer: "Orange"),
        Questions(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin","abc"], correctAnswer: "Rum"),
        Questions(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile","songoku"], correctAnswer: "Gorilla"),
        Questions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland","naruto"], correctAnswer: "Australia"),
        //level 2
        Questions(q: "Bệnh gì bác sĩ bó tay?", a: ["Gãy tay!", "Australia", "Scotland","naruto"], correctAnswer: "Gãy tay!"),
        Questions(q: "Con gì ăn lửa với nước than?", a: [" Con tàu", "Australia", "Scotland","naruto"], correctAnswer: "Con tàu"),
        Questions(q: "Cái gì trong trắng ngoài xanh trồng đậu trồng hành rồi thả heo vào?", a: ["Indonesia", "Bánh chưng", "Scotland","naruto"], correctAnswer: "Bánh chưng"),
        Questions(q: "Con gì mang được miếng gỗ lớn nhưng không mang được hòn sỏi?", a: ["Con sông", "Australia", "Scotland","naruto"], correctAnswer: "Con sông"),
        Questions(q: "Quần rộng nhất là quần gì?", a: [" Quần đảo", "Australia", "Scotland","naruto"], correctAnswer: "Quần đảo"),
        Questions(q: " Con đường nào dài nhất?", a: ["Indonesia", "Australia", "Đường đời","naruto"], correctAnswer: " Đường đời"),
        Questions(q: "Một ly thuỷ tinh đựng đầy nước, làm thế nào để lấy nước dưới đáy ly mà không đổ nước ra ngoài?", a: ["Indonesia", "Australia", "Scotland","Dùng ống hút"], correctAnswer: "Dùng ống hút"),
        Questions(q: "Cái gì người mua biết, người bán biết, người xài không bao giờ biết?", a: ["Indonesia", "Australia", "Quan tài","naruto"], correctAnswer: "Quan tài"),
        Questions(q: "Lịch nào dài nhất?", a: ["Indonesia", "Lịch sử", "Scotland","Chơi cờ"], correctAnswer: "Lịch sử"),
        Questions(q: "Xã nào đông nhất?", a: ["Indonesia", "Xã hội", "Scotland","naruto"], correctAnswer: "Xã hội"),
        //Level 3
        Questions(q: "Lich nao dai nhat?", a: ["Lich su", "Australia", "Scotland","naruto"], correctAnswer: "Lich su"),
        Questions(q: "Ai thong minh nhat?", a: ["Duy", "Loi", "Nghia","naruto"], correctAnswer: "Duy"),
        Questions(q: "Ai code hay nhat nhom IOS?", a: ["Nghia", "Sinh", "Duy","Yeu nhu nhau"], correctAnswer: "Duy"),
        Questions(q: "Con gi hoi nhat?", a: ["Cho", "Meo", "Khi","Ga"], correctAnswer: "Ga"),
        Questions(q: "Lam the nao de dc 10?", a: ["Hack", "Pha Ban", "Ngu","Hoc"], correctAnswer: "Hoc"),
        Questions(q: "Ban di hoc bang phuong tien gi", a: ["Di bo", "Xe may", "Xe dap","May bay"], correctAnswer: "Di bo"),
        Questions(q: "Ban co choi Lien Quan khong?", a: ["Co", "Khong", "Khong biet choi","Game la de"], correctAnswer: "Co"),
        Questions(q: "Lam the nao de hoc IOS gioi?", a: ["Hoc di", "Co window", "Macbook","Kho qua bo qua"], correctAnswer: "Macbook"),
        Questions(q: "Ban co thich deadline khong?", a: ["Co", "Deadline la gi?", "Sinh vien tai nang","Khong"], correctAnswer: "Co"),
        Questions(q: "lam the nao de tro thanh lap trinh vien?", a: ["Co ban gai", "Co ban trai", "Di ngu","Code"], correctAnswer: "Code"),
        
    ]

    func getQuestionText(levelUser: Int) -> String {
        return quiz[questionNumber+levelUser].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers(levelUser: Int) -> [String] {
        return quiz[questionNumber+levelUser].answers
    }
    
    func getProgress() -> Float {
         return Float(questionNumber) / 10
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion()-> Bool {
        
        if questionNumber + 1 < 10 {
            questionNumber += 1
        } else {
            return false
        }
        return true
         
    }
    
    //check answer when user right
    mutating func checkAnswer(userAnswer: String, levelUser: Int) -> Bool {
        //Need to change answer to rightAnswer here. for level user
        if userAnswer == quiz[questionNumber+levelUser].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
