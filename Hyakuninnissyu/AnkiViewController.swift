//
//  AnkiViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/09/16.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class Hyakuninissyu {
    
    var number: String!//百人一首の番号
    
    var kamigo: String!//上五
    
    var nakashichi: String!//中七
    
    var shimogo: String!//下五
    
    var shimonoku1: String!//下の句上の段
    
    var shimonoku2: String!//下の句下の段
    
    var sakusya: String!//作者
    
    var imi: String!//意味
    
    var kanadukai1: String!//仮名遣いの違う文字１行目
    
    var kanadukai2: String!//仮名遣いの違う文字２行目
    
    //初期化　引数でこれらをもらって設定している
    init(number: String, kamigo: String, nakashichi: String, shimogo: String, shimonoku1: String, shimonoku2: String, sakusya: String, imi: String, kanadukai1: String, kanadukai2: String){
        self.number = number
        self.kamigo = kamigo
        self.nakashichi = nakashichi
        self.shimogo = shimogo
        self.shimonoku1 = shimonoku1
        self.shimonoku2 = shimonoku2
        self.sakusya = sakusya
        self.imi = imi
        self.kanadukai1 = kanadukai1
        self.kanadukai2 = kanadukai2
    }
}


class AnkiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
