//
//  Mentor.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import Foundation

struct Mentor {
    let id = UUID()
    let name: String
    let image: String
    let profesion: String
    let likes: Int
    let comments: Int
    let students: [Student]
}

extension Mentor {
    static let MOCK_MENTORS = [
        Mentor(name: "Eunice Burgess", image: "man1", profesion: "Animator", likes: 384, comments: 43, students: Student.MOCK_STUDENTS),
        Mentor(name: "Yael Castro", image: "woman1", profesion: "Graphic Designer", likes: 983, comments: 24, students: Student.MOCK_STUDENTS),
        Mentor(name: "Brenda Cantu", image: "woman2", profesion: "iOS Developer", likes: 234, comments: 53, students: Student.MOCK_STUDENTS),
        Mentor(name: "Leo Torres", image: "man2", profesion: "Java Developer", likes: 234, comments: 45, students: Student.MOCK_STUDENTS),
        Mentor(name: "Marina Troncoso", image: "woman3", profesion: "Rive Expert", likes: 352, comments: 23, students: Student.MOCK_STUDENTS),
        Mentor(name: "Paulina Ramos", image: "woman4", profesion: "FlutterFlow", likes: 212, comments: 54, students: Student.MOCK_STUDENTS),
        Mentor(name: "Jorge Estrada", image: "man3", profesion: "Manager", likes: 123, comments: 64, students: Student.MOCK_STUDENTS),
        Mentor(name: "Eva Santos", image: "woman5", profesion: "Product Manager", likes: 234, comments: 43, students: Student.MOCK_STUDENTS),
        Mentor(name: "Alberto Dones", image: "man4", profesion: "UI/UX Designer", likes: 532, comments: 23, students: Student.MOCK_STUDENTS),
        Mentor(name: "Cesar Flores", image: "man5", profesion: "Python Developer", likes: 123, comments: 13, students: Student.MOCK_STUDENTS)
    ]
}
