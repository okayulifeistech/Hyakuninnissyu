//
//  ViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/09/14.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    //StoryBoardで扱うTableViewを宣言
    //@IBOutlet var table: UITableView!
    
    var hyakuninissyuArray: [Hyakuninissyu] = []
    
    /*@IBOutlet var numberLabel: UILabel!
    @IBOutlet var kanjiLabel: UILabel!
    @IBOutlet var kanjisakusyaLabel: UILabel!
    @IBOutlet var hiraganaLabel: UILabel!
    @IBOutlet var hiraganasakusyaLabel: UILabel!
    @IBOutlet var eigoLabel: UILabel!
    @IBOutlet var eigosakusyaLabel: UILabel!
    @IBOutlet var imiLabel: UILabel!
    /*@IBOutlet var kanadukai1Label: UILabel!
     @IBOutlet var kanadukai2Label: UILabel!*/
    
    //表示する番号
    var index: Int = 0*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //TableViewのデータソースメソッドはViewControllerメソッドに書くよ、という設定
        //table.dataSource = self
        
        hyakuninissyuArray.append(Hyakuninissyu(number: "1", kanji: "秋の田の", kanjisakusya: "仮庵の庵の", hiragana: "苫をあらみ", hiraganasakusya: "我が衣手は", eigo: "露にぬれつつ", eigosakusya: "天智天皇", imi: "" /*kanadukai1: "", kanadukai2: ""*/))
         //setUI()
    }
    //hyakuninissyuArray.append(Hyakuninissyu(number: "1", kanji: "秋の田の", kanjisakusya: "仮庵の庵の",hiragana: "苫をあらみ", hiraganasakusya: "我が衣手は", eigo: "露にぬれつつ", eigosakusya: "天智天皇", imi: "" /*kanadukai1: "", kanadukai2: ""*/))
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   /*
    @IBAction func back() {
        index = index - 1
        setUI()
    }
    
    @IBAction func front() {
        index = index - 1
        setUI()
    }
     */
    /*
    func setUI() {
        numberLabel.text = hyakuninissyuArray[0].number
        kanjiLabel.text = hyakuninissyuArray[0].kanji
        kanjisakusyaLabel.text = hyakuninissyuArray[0].kanjisakusya
        hiraganaLabel.text = hyakuninissyuArray[0].hiragana
        hiraganasakusyaLabel.text = hyakuninissyuArray[0].hiraganasakusya
        eigoLabel.text = hyakuninissyuArray[0].eigo
        eigosakusyaLabel.text = hyakuninissyuArray[0].eigosakusya
        imiLabel.text = hyakuninissyuArray[0].imi
        /*kanadukai1Label.text = hyakuninissyuArray[0].kanadukai1
         kanadukai2Label.text = hyakuninissyuArray[0].kanadukai2*/
    }
  */
    
    /*//セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = "テスト"
        
        return cell!
        
    }*/
}
