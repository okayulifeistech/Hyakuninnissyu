//
//  ViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/09/14.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var hyakuninissyuArray: [Hyakuninissyu] = []
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var kamigoLabel: UILabel!
    @IBOutlet var nakashichiLabel: UILabel!
    @IBOutlet var shimogoLabel: UILabel!
    @IBOutlet var shimonoku1Label: UILabel!
    @IBOutlet var shimonoku2Label: UILabel!
    @IBOutlet var sakusyaLabel: UILabel!
    @IBOutlet var imiLabel: UILabel!
    @IBOutlet var kanadukai1Label: UILabel!
    @IBOutlet var kanadukai2Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    hyakuninissyuArray.append(Hyakuninissyu(number: "1", kamigo: "秋の田の", nakashichi: "仮庵の庵の",shimogo: "苫をあらみ", shimonoku1: "我が衣手は", shimonoku2: "露にぬれつつ", sakusya: "天智天皇", imi: "", kanadukai1: "", kanadukai2: ""))
    setUI()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
func setUI() {
    numberLabel.text = hyakuninissyuArray[0].number
    kamigoLabel.text = hyakuninissyuArray[0].kamigo
    nakashichiLabal.text = hyakuninissyuArray[0].nakashichi
    shimogoLabal.text = hyakuninkssyuArray[0].shimogo
    shimonoku1Labal.text = hyakuninissyuArray[0].shimonoku1
    shimonoku2Label.text = hyakuninissyuArray[0].shimonoku2
    sakusyaLabel.text = hyakuninissyuArray[0].sakusya
    imiLabel.text = hyakuninissyuArray[0].imi
    kanadukai1Label.text = hyakuninissyuArray[0].kanadukai1
    kanadukai2Label.text = hyakuninissyuArray[0].kanadukai2
}
