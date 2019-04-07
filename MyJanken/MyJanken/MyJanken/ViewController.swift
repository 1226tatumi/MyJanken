//
//  ViewController.swift
//  MyJanken
//
//  Created by tatsumi on 2019/04/07.
//  Copyright © 2019 tatsumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerlmageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    //じゃんけん（数字）
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        //0,1,2の数値をランダムに算出（乱数）
        //arc4randam_uniform()の戻りねはUInt32だがSwiftの標準的な整数型Intにキャスト（変換）する
        answerNumber = Int(arc4random_uniform(3))
        
        if answerNumber == 0 {
            //グー
        answerLabel.text = "グー"
        answerlmageView.image = UIImage(named:"gu")
            
        } else if answerNumber == 1 {
         //チョキ
        answerLabel.text = "チョキ"
        answerlmageView.image = UIImage(named: "choki")
            
        } else if answerNumber == 2 {
        //パー
        answerLabel.text = "パー"
        answerlmageView.image = UIImage(named: "pa")
        
        }
        
        
    }
    
}

