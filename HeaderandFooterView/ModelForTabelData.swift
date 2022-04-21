//
//  ModelForTabelData.swift
//  HeaderandFooterView
//
//  Created by Codebele 07 on 20/04/2022.
//

import Foundation
//struct PersonModel : Codable {
//
//    let person : [Person]?
//    
//    enum CodingKeys: String, CodingKey {
//        case person = "person"
//    }
//    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        person = try values.decodeIfPresent([Person].self, forKey: .person)
//    }
//}
//
//struct Person : Codable {
//    
//    var name : String?
//    var age : Int?
//    var employed : String?
//    
//    enum CodingKeys: String, CodingKey {
//        case name = "name"
//        case age = "age"
//        case employed = "employed"
//    }
//    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        name = try values.decodeIfPresent(String.self, forKey: .name)
//        age = try values.decodeIfPresent(Int.self, forKey: .age)
//        employed = try values.decodeIfPresent(String.self, forKey: .employed)
//        
//    }
//}
// MARK: - Welcome
struct Welcome: Codable {
    let person: [Person]
}

// MARK: - Person
struct Person: Codable {
    let name, age, employed: String
}

