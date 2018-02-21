//
//  CounterViewModel.swift
//  SimpleMVVM
//
//  Created by Csw on 2/19/18.
//  Copyright © 2018 csw. All rights reserved.
//

import UIKit

class CounterViewModel: NSObject {
    
    private var counterValue: Int = 0

    
    func updateCounter(completion: (_ counterValue: Int) -> ()) {
        counterValue += 1
        completion(counterValue)
    }
    
}
