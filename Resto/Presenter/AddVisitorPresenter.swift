//
//  AddVisitorPresenter.swift
//  Resto
//
//  Created by Wisnu Riyan Pratama Putra on 07/05/18.
//  Copyright © 2018 Wisnu Riyan Pratama. All rights reserved.
//

import Foundation

protocol AddVisitorDelegate {
    func successInsert()
    func errorInsert()
}

class AddVisitorPresenter {
    var delegate: AddVisitorDelegate
    
    init(delegate: AddVisitorDelegate) {
        self.delegate = delegate
    }
    
    func insertVisitor(visitor: Visitor) {
        print(visitor.name, visitor.gender, visitor.age, visitor.date)
        visitor.saveItem(visitor: visitor)
        delegate.successInsert()
    }
}
