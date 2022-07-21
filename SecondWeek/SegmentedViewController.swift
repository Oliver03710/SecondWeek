//
//  SegmentedViewController.swift
//  SecondWeek
//
//  Created by Junhee Yoon on 2022/07/12.
//

import UIKit

enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}

class SegmentedViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 실행됐을 때 레이블에 입력된 채로 실행하기
        segmentControlValueChanged(segmentControl)
        
        // DateFormatter: 알아보기 쉬운 날짜 + 시간대 (yyyy MM dd hh:mm:ss)
        let format = DateFormatter()
        format.dateFormat = "M월 d일, yy년"
        
        let result = format.string(from: Date())
        print(result)
        
        let word = "3월 2일, 19년"
        let dateResult = format.date(from: word)
        print(dateResult)
    }
    
    // MARK: - Helper Functions
    
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            resultLabel.text = "첫번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == MusicType.korea.rawValue {
            resultLabel.text = "두번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == MusicType.other.rawValue {
            resultLabel.text = "세번째 세그먼트 선택"
        } else {
            resultLabel.text = "오류"
        }
        
//        if segmentControl.selectedSegmentIndex == 0 {
//            resultLabel.text = "첫번째 세그먼트 선택"
//        } else if segmentControl.selectedSegmentIndex == 1 {
//            resultLabel.text = "두번째 세그먼트 선택"
//        } else if segmentControl.selectedSegmentIndex == 2 {
//            resultLabel.text = "세번째 세그먼트 선택"
//        } else {
//            resultLabel.text = "오류"
//        }
        
    }
    
    
    
    
    


}
