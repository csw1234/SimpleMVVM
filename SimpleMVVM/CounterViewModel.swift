//
//  CounterViewModel.swift
//  SimpleMVVM
//
//  Created by Csw on 2/19/18.
//  Copyright © 2018 csw. All rights reserved.
//

import RxSwift

class CounterViewModel: NSObject{
   
    var count = Variable<Int>(1)
    var nameObserver : Observable<Int>{
        return count.asObservable()
    }
    
    let disposeBag = DisposeBag()
    
    func updateUI(){
        

    }
}
