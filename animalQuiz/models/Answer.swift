//
//  Answer.swift
//  animalQuiz
//
//  Created by Айдар Нуркин on 05.02.2023.
//

enum AnimalType: Character {
    
    case dog = "🐶"
    case cat = "🐱"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var defenition: String {
        switch self {
        case .dog:
            return "You are the Dog"
        case .cat:
            return "You are the Cat"
        case .turtle:
            return "You are the Turtle"
        case .rabbit:
            return "You are the Rabbit"
        }
    }
}

struct Answer {
    let text: String
    let type: AnimalType
}

