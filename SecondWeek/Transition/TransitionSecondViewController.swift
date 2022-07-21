//
//  TransitionSecondViewController.swift
//  SecondWeek
//
//  Created by Junhee Yoon on 2022/07/15.
//

import UIKit

class TransitionSecondViewController: UIViewController {
   
    // MARK: - Properties
    
    @IBOutlet weak var mottoTextView: UITextView!
    
    @IBOutlet weak var emotionLabel: UILabel!
    /*
     1. 앱을 켜면 데이터 가지고 와서 텍스트 뷰 보여주기
     2. 바뀐 데이터를 저장해주어야 한다
     => UserDefault
     
     */
    
    var count = 0
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TransitionSecondViewController", #function)
        
        emotionLabel.text = "\(UserDefaults.standard.integer(forKey: "emotion"))"
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            
            // 가져오기
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            mottoTextView.text = "고래밥"
        }
    }
    
    // MARK: - Helper Functions
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    
    
    
    // MARK: - IBActions
    
    // 돌아가고자 하는 화면에 코드 작성
    @IBAction func unwindTransitionFirstVC(jackSegue: UIStoryboardSegue) {
        
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장됨.")
        
    }
    
    @IBAction func emoButtonTapped(_ sender: UIButton) {
        
        let currentValue = UserDefaults.standard.integer(forKey: "emotion")
        let updateValue = currentValue + 1
        UserDefaults.standard.set(updateValue, forKey: "emotion")
        emotionLabel.text = "\(UserDefaults.standard.integer(forKey: "emotion"))"
        print("감정 전달됨.")
        
    }
}
