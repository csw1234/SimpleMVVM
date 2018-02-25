//
//  CounterModel.swift
//  SimpleMVVM
//
//  Created by Csw on 2/21/18.
//  Copyright © 2018 csw. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class Counter{
    var count: Variable<Int>
    
    
    init(){
        count = Variable(0)
    }
    
    func incCounter(){
        
    }
}
