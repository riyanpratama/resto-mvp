//
//  Visitor.swift
//  Resto
//
//  Created by Wisnu Riyan Pratama Putra on 07/05/18.
//  Copyright © 2018 Wisnu Riyan Pratama. All rights reserved.
//

import Foundation
import RealmSwift

class Visitor: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var gender: String = ""
    @objc dynamic var age: Int = 0
    @objc dynamic var date: Date = Date()
    
    func saveItem(visitor: Visitor) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(visitor)
        }
    }
    
}
