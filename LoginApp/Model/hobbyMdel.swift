//
//  hobbyMdel.swift
//  LoginApp
//
//  Created by Alexey on 17.12.2022.
//

struct HobbyInfo {
    let hobbyName: String
    let aboutHobbyText: String
}
extension HobbyInfo{
    static func alexHobby() -> HobbyInfo{
        HobbyInfo(hobbyName: "Сноуборд",
                  aboutHobbyText: "Любимое хобби это катание на сноуборде, с 4 лет учился кататься на  горных лыжах, но в 12 лет прешел на сноуборд и к горным лыжам больше не возвращался")
    }
}
