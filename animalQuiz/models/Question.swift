//
//  Question.swift
//  animalQuiz
//
//  Created by Айдар Нуркин on 05.02.2023.
//

enum ResponseType {
    case single
    case multiple
    case range
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestion() -> [Question] {
        return [
            Question(
                text: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(text: "Рыба",type: .cat),
                    Answer(text: "Стейк",type: .dog),
                    Answer(text: "Морковь",type: .rabbit),
                    Answer(text: "Кукуруза",type: .turtle)
                ]
            ),
            Question(
                text: "Что вы любите делать?",
                type: .multiple,
                answers: [
                    Answer(text: "Спать",type: .cat),
                    Answer(text: "Плавать",type: .dog),
                    Answer(text: "Обниматься",type: .rabbit),
                    Answer(text: "Есть",type: .turtle)
                ]
            ),
            Question(
                text: "Любите ли вы поездки на машине",
                type: .range,
                answers: [
                    Answer(text: "Люблю",type: .cat),
                    Answer(text: "Люблю",type: .dog),
                    Answer(text: "Ненавижу",type: .rabbit),
                    Answer(text: "Ненавижу",type: .turtle)
                ]
            ),
            
        ]
    }
}

