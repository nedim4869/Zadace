//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

//ZADATAK 1
//Dio 1

//1)
struct Location {
    let latitude: Double
    let longitude: Double
    
    init() {
        latitude = Double(arc4random()%181) - 90.0
        longitude = Double(arc4random()%361) - 90.0
    }
}

//2)
class Person {
    var name: String
    var lastName: String
    var yearOfBirth: Int
    var location: Location
    var age: Int {
        get { return 2016 - yearOfBirth }
        }
    
    init(name: String, lastName: String, yearOfBirth: Int, location: Location){
        self.name = name
        self.lastName = lastName
        self.yearOfBirth = yearOfBirth
        self.location = location
    }
    
    convenience init(name: String, lastName: String){
        self.init(name: name, lastName: lastName)
        yearOfBirth = 1990
        location = Location()
    }
    
    func introduction() -> String{
        return "Hi, my name is \(name) \(lastName). Aged \(age)"
    
    }
    }

//3) 

let mirko = Person(name: "Mirko", lastName: "Babic", yearOfBirth: 1987, location:Location())
let nedim =  Person(name: "Nedim", lastName: "Sabic", yearOfBirth: 1982, location: Location())
mirko.yearOfBirth = 1440
mirko.introduction()
nedim.introduction()

//Dio 2. 

//1)

struct Course {
    let teacher: Person
    let courseName: String
    
    func aboutCourse() -> String{
        return "\(courseName) course by prof. \(teacher.lastName)"
    }
}

//2)

class Student: Person {
    var attendingCourses: [Course]?
    var grades: [Int]
    let faculty = "WiP"
    var averageGrade: Double {
        get {
            var gradesSum: Int = 0
            for grade in grades{
                gradesSum += grade
            }
            if grades == [] {
                return 0
            }
            return Double(gradesSum) / Double(grades.count)        }
    }
    init(name: String, lastName: String, yearOfBirth: Int, location: Location, attendingCourses: [Course], grades:[Int]){
        self.attendingCourses = attendingCourses
        self.grades = grades
        super.init(name: name, lastName: lastName, yearOfBirth: yearOfBirth, location: Location())
}
    override func introduction() -> String {
        if let attendingCourses = attendingCourses {
            return "\(super.introduction()) I'm a student at \(faculty). My favourite course is \(attendingCourses.first!.aboutCourse())"
        }
        return "\(super.introduction()) I'm a student at \(faculty)."
    }
}

//3)

let iOSDevelopment = Course(teacher: mirko, courseName: "iOS Development")
let seo = Course(teacher: nedim, courseName: "seo")
let courses = [iOSDevelopment, seo]
let student = Student(name: "Nedim", lastName: "Karakas", yearOfBirth: 1994, location: Location(), attendingCourses: courses, grades: [10, 10, 8, 9])

student.introduction()
