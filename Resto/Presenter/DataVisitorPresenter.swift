//
//  DataVisitorPresenter.swift
//  Resto
//
//  Created by Wisnu Riyan Pratama Putra on 07/05/18.
//  Copyright © 2018 Wisnu Riyan Pratama. All rights reserved.
//

import Foundation

protocol DataVisitorDelegate {
    
}

class DataVisitorPresenter {
    var delegate: DataVisitorDelegate
    
    init(delegate: DataVisitorDelegate) {
        self.delegate = delegate
    }
}
