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
import RxCocoa

class ViewController: UIViewController {

    var viewModel: CounterViewModel?
    
    private let disposeBag = DisposeBag()
    
    // MARK: IBOutlets
    
    @IBOutlet weak var counterLabel: UILabel!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = CounterViewModel()
        //setupBInding()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        viewModel?.updateCounter { value in
            self.counterLabel.text = "\(value)"
        }
        
        // Read about: GCD, Completion Blocks
    }
    
    
   // private func setupBinding(){
   //     counterLabel.rx.text.orEmpty
    //        .bind(to: viewModel.counterValue)
   //         .disposed(by: disposeBag)
    //
    //}

}

