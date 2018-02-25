//
//  ViewController.swift
//  SimpleMVVM
//
//  Created by Csw on 2/19/18.
//  Copyright © 2018 csw. All rights reserved.
//

import UIKit
import SwiftyJSON
import RxSwift
//import RxCocoa

class ViewController: UIViewController {

    var viewModel: CounterViewModel?
    
    private let disposeBag = DisposeBag()
    
    // MARK: IBOutlets
    @IBOutlet weak var ddd: UITextView!
    
    @IBOutlet weak var counterLabel: UILabel!

    @IBOutlet weak var incButton: UIButton!
    // MARK: Lifecycle
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = CounterViewModel()
        //setupBinding()
        
        ddd.rx.text.asObservable()
            .subscribe(onNext: {value in
            self.viewModel?.count.value  = value!
        }).disposed(by: disposeBag)
        
        incButton.rx.tap.asObservable().subscribe(onNext: {val in
            self.viewModel?.count.value = "78"
        }).disposed(by: disposeBag)
        
        self.viewModel?.count.asObservable().bind(to: self.counterLabel.rx.text).disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //@IBAction func buttonTapped(_ sender: Any) {
        //viewModel?.updateCounter { value in
           // self.counterLabel.text = "\(value)"
       // }
        
        // Read about: GCD, Completion Blocks
    //}
    
    func setupBinding(){
        
        
        
        viewModel?.count.asObservable().map{
            value in
            return "value:  \(value)"
        }.subscribe(onNext: {value in
            print(value)
        })
            .disposed(by: disposeBag)
        
        
    }
}


