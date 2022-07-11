//
//  ViewController.swift
//  SecondWeek
//
//  Created by Junhee Yoon on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var oneImageButton: UIButton!
    @IBOutlet weak var twoImageButton: UIButton!
    @IBOutlet weak var threeImageButton: UIButton!
    @IBOutlet weak var fourImageButton: UIButton!
    @IBOutlet weak var fiveImageButton: UIButton!
    @IBOutlet weak var sixImageButton: UIButton!
    @IBOutlet weak var sevenImageButton: UIButton!
    @IBOutlet weak var eightImageButton: UIButton!
    @IBOutlet weak var nineImageButton: UIButton!
    
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    @IBOutlet weak var sevenLabel: UILabel!
    @IBOutlet weak var eightLabel: UILabel!
    @IBOutlet weak var nineLabel: UILabel!
    
    var countArray: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }

    // MARK: - Helper Functions

    func configureUI() {
        configureButtons(oneImageButton, image: 1)
        configureButtons(twoImageButton, image: 2)
        configureButtons(threeImageButton, image: 3)
        configureButtons(fourImageButton, image: 4)
        configureButtons(fiveImageButton, image: 5)
        configureButtons(sixImageButton, image: 6)
        configureButtons(sevenImageButton, image: 7)
        configureButtons(eightImageButton, image: 8)
        configureButtons(nineImageButton, image: 9)
        
        configureLabels(oneLabel, emotion: "행복해", counts: 0)
        configureLabels(twoLabel, emotion: "사랑해", counts: 1)
        configureLabels(threeLabel, emotion: "좋아해", counts: 2)
        configureLabels(fourLabel, emotion: "당황해", counts: 3)
        configureLabels(fiveLabel, emotion: "속상해", counts: 4)
        configureLabels(sixLabel, emotion: "우울해", counts: 5)
        configureLabels(sevenLabel, emotion: "심심해", counts: 6)
        configureLabels(eightLabel, emotion: "아파해", counts: 7)
        configureLabels(nineLabel, emotion: "슬퍼해", counts: 8)

        
    }
    
    func configureButtons(_ button: UIButton, image: Int) {
        button.setImage(UIImage(named: "sesac_slime\(image)"), for: .normal)
        
    }
    
    func configureLabels(_ label: UILabel, emotion: String, counts: Int) {

        label.text = "\(emotion) \(countArray[counts])"
        label.textAlignment = .center
    }
    
    // MARK: - IBActions
    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        
//        guard let button = sender as UIButton? else { return }
        
        switch sender {
        case oneImageButton:
            countArray[0] += 1
            oneLabel.text = "행복해 \(countArray[0])"
        case twoImageButton:
            countArray[1] += 1
            twoLabel.text = "사랑해 \(countArray[1])"
        case threeImageButton:
            countArray[2] += 1
            threeLabel.text = "좋아해 \(countArray[2])"
        case fourImageButton:
            countArray[3] += 1
            fourLabel.text = "당황해 \(countArray[3])"
        case fiveImageButton:
            countArray[4] += 1
            fiveLabel.text = "속상해 \(countArray[4])"
        case sixImageButton:
            countArray[5] += 1
            sixLabel.text = "우울해 \(countArray[5])"
        case sevenImageButton:
            countArray[6] += 1
            sevenLabel.text = "심심해 \(countArray[6])"
        case eightImageButton:
            countArray[7] += 1
            eightLabel.text = "아파해 \(countArray[7])"
        case nineImageButton:
            countArray[8] += 1
            nineLabel.text = "슬퍼해 \(countArray[8])"
        default:
            break
            
        }
    }
    
    
    
}

