//
//  Model.swift
//  LoginApp
//
//  Created by Alexey on 14.12.2022.
//
struct UserData {
    let userLogin = "alex1988"
    let password = "Password"
    let name = "Алексей Кулешов"
}

struct PersonInfo {
    let emplyment: String
    let workSchedule: String
    let desiredSalary: String
    let birthDate: String
    let workExperience: String
}
extension PersonInfo {
    static func alexPerson() -> PersonInfo {
     PersonInfo(emplyment: "Полная",
                workSchedule: "5/2",
                desiredSalary:"5000$",
                birthDate: "06.04.1988",
                workExperience: "Генеральный директор в компании ООО ТК СП СТРОЙ более 7 лет. Строительство теннисных кортов. Разработка покрытия грунтовых кортов для Российских погодных условий. Разработка покрытия Hard Clay, с последующим патентованием технологии.")
    }
}


