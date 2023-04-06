//
//  TransitionFirstViewController.swift
//  SecondWeek
//
//  Created by Junhee Yoon on 2022/07/15.
//

import UIKit

class TransitionFirstViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var randomLabel: UILabel!
    
    
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        
        
        
        
    }
    
    // MARK: - Helper Functions
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
        randomLabel.text = "\(Int.random(in: 1...100))"
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    
    
    
    // MARK: - IBActions
    
    // 돌아가고자 하는 화면에 코드 작성
    @IBAction func unwindTransitionFirstVC(jackSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func unwindTransitionToFistPage(Segue: UIStoryboardSegue) {
        
    }
    
}
