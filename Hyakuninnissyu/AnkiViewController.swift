//
//  AnkiViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/09/16.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

//class Hyakuninissyu {
//    
//    var number: String!//百人一首の番号
//    
//    var kanji: String!//上五
//    
//    var kanjisakusya: String!//中七
//    
//    var hiragana: String!//下五
//    
//    var hiraganasakusya: String!//下の句上の段
//    
//    var eigo: String!//下の句下の段
//    
//    var eigosakusya: String!//作者
//    
//    var imi: String!//意味
//    
//    /*var kanadukai1: String!//仮名遣いの違う文字１行目
//    
//    var kanadukai2: String!//仮名遣いの違う文字２行目*/
//    
//    //初期化　引数でこれらをもらって設定している
//    init(number: String, kanji: String,kanjisakusya : String, hiragana: String, hiraganasakusya: String, eigo: String, eigosakusya: String, imi: String /*kanadukai1: String, kanadukai2: String*/ ){
//        self.number = number
//        self.kanji = kanji
//        self.kanjisakusya = kanjisakusya
//        self.hiragana = hiragana
//        self.hiraganasakusya = hiraganasakusya
//        self.eigo = eigo
//        self.eigosakusya = eigosakusya
//        self.imi = imi
//        /*self.kanadukai1 = kanadukai1
//        self.kanadukai2 = kanadukai2*/
//    }
//}


class AnkiViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var kanjiLabel: UILabel!
    @IBOutlet var kanjisakusyaLabel: UILabel!
    @IBOutlet var hiraganaLabel: UILabel!
    @IBOutlet var hiraganasakusyaLabel: UILabel!
    @IBOutlet var eigoLabel: UILabel!
    @IBOutlet var eigosakusyaLabel: UILabel!
    @IBOutlet var imiLabel: UILabel!
    /*@IBOutlet var kanadukai1Label: UILabel!
     @IBOutlet var kanadukai2Label: UILabel!*/
    
    let numberArray: [String] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"]
    let kanjiArray: [String] = ["秋の田の","春過ぎて","あしびきの","田子の浦に","奥山に","かささぎの","天の原","我が庵は","花の色は","これやこの","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    let kanjisakusyaArray: [String] = ["天智天皇","持統天皇","柿本人麻呂","山部赤人","猿丸大夫","中納言家持","安倍仲麻呂","喜撰法師","小野小町","蝉丸"]
    let hiraganaArray: [String] = ["あきのたの","はるすぎて","あしびきの","たごのうらに","おくやまに","かささぎの","あまのはら","わがいほは","はなのいろは","これやこの"]
    let hiraganasakusyaArray: [String] = ["てんぢてんのう","じとうてんのう","かきもとのひとまろ","やまべのあかひと","さるまるだゆう","ちゅうなごんやかもち","あべのなかまろ","きせんほうし","おののこまち","せみまる"]
    let eigoArray: [String] = ["akinotano","harusugite","ashibikino","tagonourani","okuyamani","kasasagino","amanohara","wagaiho(o)ha","hananoiroha","koreyakono"]
    let eigosakusyaArray: [String] = ["tenditennnou","zitoutennnou","kakimotonohitomaro","yamabenoakahito","sarumarudayuu","tyuunagonnyakamoti","abenonakamaro","kisennhoushi","ononokomati","semimaru"]
    let imiArray: [String] = ["p","p","p","p","p","p","p","p","p","p"]
    
    
    //表示する番号
    var index: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad() // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(){
        //それぞれのラベルに配列の要素を追加する
        numberLabel.text = numberArray[index]
        kanjiLabel.text = kanjiArray[index]
        kanjisakusyaLabel.text = kanjisakusyaArray[index]
        hiraganaLabel.text = hiraganaArray[index]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index]
        eigoLabel.text = eigoArray[index]
        eigosakusyaLabel.text = eigosakusyaArray[index]
        
        //indexの値を+1する
        index = index - 1
        
        //indexの値が9より大きくなったら0に戻る
        if index > 9 {
            index = 0
        }
        
        //indexの値が0より小さくなったら9に戻る
        if index < 0 {
            index = 9
        }
        numberLabel.text = numberArray[index]
        kanjiLabel.text = kanjiArray[index]
        kanjisakusyaLabel.text = kanjisakusyaArray[index]
        hiraganaLabel.text = hiraganaArray[index]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index]
        eigoLabel.text = eigoArray[index]
        eigosakusyaLabel.text = eigosakusyaArray[index]
        
    }
    
    @IBAction func front(){
        //それぞれのラベルに配列の要素を追加する
        numberLabel.text = numberArray[index]
        kanjiLabel.text = kanjiArray[index]
        kanjisakusyaLabel.text = kanjisakusyaArray[index]
        hiraganaLabel.text = hiraganaArray[index]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index]
        eigoLabel.text = eigoArray[index]
        eigosakusyaLabel.text = eigosakusyaArray[index]
        
        //indexの値を+1する
        index = index + 1
    
    //indexの値が9より大きくなったら0に戻る
    if index > 9 {
    index = 0
    }
        
        numberLabel.text = numberArray[index]
        kanjiLabel.text = kanjiArray[index]
        kanjisakusyaLabel.text = kanjisakusyaArray[index]
        hiraganaLabel.text = hiraganaArray[index]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index]
        eigoLabel.text = eigoArray[index]
        eigosakusyaLabel.text = eigosakusyaArray[index]
        
        
        
    }
    
    @IBAction func modoru(){
        //画面を戻るコード
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)

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
