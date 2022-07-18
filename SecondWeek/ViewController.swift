//
//  ViewController.swift
//  SecondWeek
//
//  Created by Junhee Yoon on 2022/07/11.
//

import UIKit

enum Emotions: String, CustomStringConvertible {
    case 행복해
    case 사랑해
    case 좋아해
    case 당황해
    case 속상해
    case 우울해
    case 심심해
    case 아파해
    case 슬퍼해
    
    var description: String {
        switch self {
        case .행복해: return "sesac_slime1"
        case .사랑해: return "sesac_slime2"
        case .좋아해: return "sesac_slime3"
        case .당황해: return "sesac_slime4"
        case .속상해: return "sesac_slime5"
        case .우울해: return "sesac_slime6"
        case .심심해: return "sesac_slime7"
        case .아파해: return "sesac_slime8"
        case .슬퍼해: return "sesac_slime9"
        }
    }
}

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
    @IBOutlet var buttonsArray: [UIButton]!
    
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    @IBOutlet weak var sevenLabel: UILabel!
    @IBOutlet weak var eightLabel: UILabel!
    @IBOutlet weak var nineLabel: UILabel!
    @IBOutlet var labelsArray: [UILabel]!
    
    var countArray: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
//    var counts: Int = 0

    var emoArray = [(Emotions.행복해.rawValue, Emotions.행복해.description),
                    (Emotions.사랑해.rawValue, Emotions.사랑해.description),
                    (Emotions.좋아해.rawValue, Emotions.좋아해.description),
                    (Emotions.당황해.rawValue, Emotions.당황해.description),
                    (Emotions.속상해.rawValue, Emotions.속상해.description),
                    (Emotions.우울해.rawValue, Emotions.우울해.description),
                    (Emotions.심심해.rawValue, Emotions.심심해.description),
                    (Emotions.아파해.rawValue, Emotions.아파해.description),
                    (Emotions.슬퍼해.rawValue, Emotions.슬퍼해.description)]
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
//        oneLabel.text = setUserNickname()
//        view.backgroundColor = example().0
//        oneImageButton.setImage(UIImage(named: example().2), for: .normal)
        
    }

    // MARK: - Helper Functions

    // 배경색, 레이블, 이미지
//    func example() -> (UIColor, String, String) {
//        let color: [UIColor] = [.yellow, .red, .blue]
//        let image: [String] = ["sesac_slime1", "sesac_slime2", "sesac_slime3"]
//
//        return (color.randomElement() ?? .brown, "고래밥", image.randomElement() ?? "")
//    }
    
    
//    func setUserNickname() -> String {
//        let nickName = ["고래밥", "칙촉", "격투가"]
//        let select = nickName.randomElement() ?? ""
//
//        return "오리온 \(select)"
//    }
    
    
    func configureUI() {
        configureButtons(oneImageButton, image: emoArray[0].1, title: emoArray[0].0)
        configureButtons(twoImageButton, image: emoArray[1].1, title: emoArray[1].0)
        configureButtons(threeImageButton, image: emoArray[2].1, title: emoArray[2].0)
        configureButtons(fourImageButton, image: emoArray[3].1, title: emoArray[3].0)
        configureButtons(fiveImageButton, image: emoArray[4].1, title: emoArray[4].0)
        configureButtons(sixImageButton, image: emoArray[5].1, title: emoArray[5].0)
        configureButtons(sevenImageButton, image: emoArray[6].1, title: emoArray[6].0)
        configureButtons(eightImageButton, image: emoArray[7].1, title: emoArray[7].0)
        configureButtons(nineImageButton, image: emoArray[8].1, title: emoArray[8].0)

        configureLabels(oneLabel, emotion: emoArray[0].0, counts: countArray[0])
        configureLabels(twoLabel, emotion: emoArray[1].0, counts: countArray[1])
        configureLabels(threeLabel, emotion: emoArray[2].0, counts: countArray[2])
        configureLabels(fourLabel, emotion: emoArray[3].0, counts: countArray[3])
        configureLabels(fiveLabel, emotion: emoArray[4].0, counts: countArray[4])
        configureLabels(sixLabel, emotion: emoArray[5].0, counts: countArray[5])
        configureLabels(sevenLabel, emotion: emoArray[6].0, counts: countArray[6])
        configureLabels(eightLabel, emotion: emoArray[7].0, counts: countArray[7])
        configureLabels(nineLabel, emotion: emoArray[8].0, counts: countArray[8])

//        let dic = [oneImageButton: 1, twoImageButton: 2, threeImageButton: 3, fourImageButton: 4, fiveImageButton: 5, sixImageButton: 6, sevenImageButton: 7, eightImageButton: 8, nineImageButton: 9]
//
//        let dicSorted = dic.sorted { $0.1 > $1.1 }
//        for (i, j) in dicSorted {
//                guard let button = i else { return }
//                configureButtons(button, image: j)
//        }
        
//        let dic = [emotion1.0: emotion1.1,
//                   emotion2.0: emotion2.1,
//                   emotion3.0: emotion3.1,
//                   emotion4.0: emotion4.1,
//                   emotion5.0: emotion5.1,
//                   emotion6.0: emotion6.1,
//                   emotion7.0: emotion7.1,
//                   emotion8.0: emotion8.1,
//                   emotion9.0: emotion9.1]
        
//        let dicSorted = dic.sorted { $0.1 > $1.1 }
        
//        for (_, j) in dicSorted {
//            guard let button = i else { return }
//            configureButtons(button, image: j)
//        }
        
//        while counts < 9 {
//            guard let buttons = buttonsArray else { return }
//            guard let labels = labelsArray else { return }
//            configureButtons(buttons[counts], image: emoArray[counts].1, title: emoArray[counts].0)
//            configureLabels(labels[counts], emotion: emoArray[counts].0, counts: emoArray[counts].2)
//            counts += 1
//        }
        
        
        if UserDefaults.standard.array(forKey: "emotion counts") != nil {
            
            for i in 0...8 {
                labelsArray[i].text = "\(emoArray[i].0) \(UserDefaults.standard.array(forKey: "emotion counts")?[i] ?? 0)"
            }
            
        } else {
            
            for i in 0...8 {
                labelsArray[i].text = "\(i)"
            }
        }
    }
    
    func configureButtons(_ button: UIButton, image: String, title: String) {
        button.setTitle(title, for: .normal)
        button.setImage(UIImage(named: image), for: .normal)
        
    }
    
    func configureLabels(_ label: UILabel, emotion: String, counts: Int) {

        label.text = "\(emotion) \(counts)"
        label.textAlignment = .center
    }
    
    func showAlertController() {
    //  흰 바탕 - UIAlertController
        let alert = UIAlertController(title: "데이터 저장", message: "하시겠습니까?", preferredStyle: .actionSheet)

    //  버튼
        let ok = UIAlertAction(title: "확인", style: .default) { action -> Void in
            UserDefaults.standard.set(self.countArray, forKey: "emotion counts")
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let delete = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)

    //  1+2
        alert.addAction(delete)
        alert.addAction(copy)
        alert.addAction(cancel)
        alert.addAction(ok)

    //  present
        present(alert, animated: true, completion: nil)
    }

    
    // MARK: - IBActions
    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        
//        guard let button = sender as UIButton? else { return }
        
//        switch sender {
//        case oneImageButton:
//            countArray[0] += 1
//            oneLabel.text = "행복해 \(countArray[0])"
//        case twoImageButton:
//            countArray[1] += 1
//            twoLabel.text = "사랑해 \(countArray[1])"
//        case threeImageButton:
//            countArray[2] += 1
//            threeLabel.text = "좋아해 \(countArray[2])"
//        case fourImageButton:
//            countArray[3] += 1
//            fourLabel.text = "당황해 \(countArray[3])"
//        case fiveImageButton:
//            countArray[4] += 1
//            fiveLabel.text = "속상해 \(countArray[4])"
//        case sixImageButton:
//            countArray[5] += 1
//            sixLabel.text = "우울해 \(countArray[5])"
//        case sevenImageButton:
//            countArray[6] += 1
//            sevenLabel.text = "심심해 \(countArray[6])"
//        case eightImageButton:
//            countArray[7] += 1
//            eightLabel.text = "아파해 \(countArray[7])"
//        case nineImageButton:
//            countArray[8] += 1
//            nineLabel.text = "슬퍼해 \(countArray[8])"
//        default:
//            break
//        }
        
        
        switch sender.currentTitle ?? "" {
        case emoArray[0].0:
            countArray[0] += 1
            labelsArray[0].text = "\(emoArray[0].0) \(countArray[0])"
        case emoArray[1].0:
            countArray[1] += 1
            labelsArray[1].text = "\(emoArray[1].0) \(countArray[1])"
        case emoArray[2].0:
            countArray[2] += 1
            labelsArray[2].text = "\(emoArray[2].0) \(countArray[2])"
        case emoArray[3].0:
            countArray[3] += 1
            labelsArray[3].text = "\(emoArray[3].0) \(countArray[3])"
        case emoArray[4].0:
            countArray[4] += 1
            labelsArray[4].text = "\(emoArray[4].0) \(countArray[4])"
        case emoArray[5].0:
            countArray[5] += 1
            labelsArray[5].text = "\(emoArray[5].0) \(countArray[5])"
        case emoArray[6].0:
            countArray[6] += 1
            labelsArray[6].text = "\(emoArray[6].0) \(countArray[6])"
        case emoArray[7].0:
            countArray[7] += 1
            labelsArray[7].text = "\(emoArray[7].0) \(countArray[7])"
        case emoArray[8].0:
            countArray[8] += 1
            labelsArray[8].text = "\(emoArray[8].0) \(countArray[8])"
        default:
            break
        }
        
//        switch sender.currentTitle ?? "" {
//        case emoArray[0].0:
//            emoArray[0].2 += 1
//            oneLabel.text = "\(emoArray[0].0) \(emoArray[0].2)"
//        case emoArray[1].0:
//            emoArray[1].2 += 1
//            twoLabel.text = "\(emoArray[1].0) \(emoArray[1].2)"
//        case emoArray[2].0:
//            emoArray[2].2 += 1
//            threeLabel.text = "\(emoArray[2].0) \(emoArray[2].2)"
//        case emoArray[3].0:
//            emoArray[3].2 += 1
//            fourLabel.text = "\(emoArray[3].0) \(emoArray[3].2)"
//        case emoArray[4].0:
//            emoArray[4].2 += 1
//            fiveLabel.text = "\(emoArray[4].0) \(emoArray[4].2)"
//        case emoArray[5].0:
//            emoArray[5].2 += 1
//            sixLabel.text = "\(emoArray[5].0) \(emoArray[5].2)"
//        case emoArray[6].0:
//            emoArray[6].2 += 1
//            sevenLabel.text = "\(emoArray[6].0) \(emoArray[6].2)"
//        case emoArray[7].0:
//            emoArray[7].2 += 1
//            eightLabel.text = "\(emoArray[7].0) \(emoArray[7].2)"
//        case emoArray[8].0:
//            emoArray[8].2 += 1
//            nineLabel.text = "\(emoArray[8].0) \(emoArray[8].2)"
//        default:
//            break
//        }

    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        showAlertController()
    }

 
}

