//
//  Model.swift
//  LoginApp
//
//  Created by Alexey on 14.12.2022.
//
//struct UserData {
//    let userLogin = "alex1988"
//    let password = "Password"
//    let name = "Алексей Кулешов"
//}
//
//struct PersonInfo {
//    let emplyment: String
//    let workSchedule: String
//    let desiredSalary: String
//    let birthDate: String
//    let workExperience: String
//}
//extension PersonInfo {
//    static func alexPerson() -> PersonInfo {
//     PersonInfo(emplyment: "Полная",
//                workSchedule: "5/2",
//                desiredSalary:"5000$",
//                birthDate: "06.04.1988",
//                workExperience: "Генеральный директор в компании ООО ТК СП СТРОЙ более 7 лет. Строительство теннисных кортов. Разработка покрытия грунтовых кортов для Российских погодных условий. Разработка покрытия Hard Clay, с последующим патентованием технологии.")
//    }
//}
struct UserData {
    let userLogin: String
    let password: String
    let person: PersonInfo
}
struct PersonInfo {
    let name: String
    let emplyment: String
    let workSchedule: String
    let desiredSalary: String
    let birthDate: String
    let workExperience: String
    let hobby: HobbyInfo
}
struct HobbyInfo {
    let hobbyName: String
    let aboutHobbyText: String
}
extension UserData {
    static func alexPerson() -> UserData {
        UserData(
            userLogin: "alex1988",
            password: "Password",
            person: PersonInfo(
                name: "Кулешов Алексей",
                emplyment: "Полная",
                workSchedule: "5/2",
                desiredSalary: "5000$",
                birthDate: "06.04.1988",
                workExperience: "Генеральный директор в компании ООО ТК СП СТРОЙ более 7 лет. Строительство теннисных кортов. Разработка покрытия грунтовых кортов для Российских погодных условий. Разработка покрытия Hard Clay, с последующим патентованием технологии.",
                hobby: HobbyInfo(
                    hobbyName: "Сноуборд",
                    aboutHobbyText: "Любимое хобби это катание на сноуборде, с 4 лет учился кататься на  горных лыжах, но в 12 лет прешел на сноуборд и к горным лыжам больше не возвращался"
                )))
    }
}
