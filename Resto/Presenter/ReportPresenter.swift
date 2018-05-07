//
//  ReportPresenter.swift
//  Resto
//
//  Created by Wisnu Riyan Pratama Putra on 07/05/18.
//  Copyright © 2018 Wisnu Riyan Pratama. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

protocol ReportDelegate {
    
}

class ReportPresenter {
    var delegate: ReportDelegate
    
    let realm = try! Realm()
    let start = Date().startOfMonth()
    let end = Date().endOfMonth()
    
    init(delegate: ReportDelegate) {
        self.delegate = delegate
    }
    
    func getNumberOfVisitorOfManInMonth() -> Int {
        let result = realm.objects(Visitor.self).filter("gender = %@ and date >= %@ and date <= %@", "Man", start, end)
        return result.count
    }
    
    func getNumberOfVisitorOfWomanInMonth() -> Int {
        let result = realm.objects(Visitor.self).filter("gender = %@ and date >= %@ and date <= %@", "Woman", start, end)
        return result.count
    }
    
    func getAverageAgeInMonth() -> Double {
        if let result: Double = realm.objects(Visitor.self).filter("date >= %@ and date <= %@", start, end).average(ofProperty: "age") {
            return result
        }
        
        return 0
    }
}
