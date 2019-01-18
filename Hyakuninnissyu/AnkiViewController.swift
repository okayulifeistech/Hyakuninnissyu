//
//  AnkiViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/09/16.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class AnkiViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var kanjiLabel: UILabel!
    @IBOutlet var kanjisakusyaLabel: UILabel!
    @IBOutlet var hiraganaLabel: UILabel!
    @IBOutlet var hiraganasakusyaLabel: UILabel!
    @IBOutlet var eigoLabel: UILabel!
    @IBOutlet var eigosakusyaLabel: UILabel!
    @IBOutlet var imiLabel: UILabel!
    @IBOutlet weak var changeImageView: UIImageView!
    let checkImage = UIImage(named: "check.png")
    /*@IBOutlet var kanadukai1Label: UILabel!
     @IBOutlet var kanadukai2Label: UILabel!*/
    var selectIndex: Int!
    var startIndex: Int!
    var indexCount: Int!
    var numberArray = Hyakuninissyu().numberArray!
    var kanjiArray = Hyakuninissyu().kanjiArray!
    var kanjisakusyaArray = Hyakuninissyu().kanjisakusyaArray!
    var hiraganaArray = Hyakuninissyu().hiraganaArray!
    var hiraganasakusyaArray = Hyakuninissyu().hiraganasakusyaArray!
    var eigoArray = Hyakuninissyu().eigoArray!
    var eigosakusyaArray = Hyakuninissyu().eigosakusyaArray!
    var imiArray = Hyakuninissyu().imiArray!
    //表示する番号
    var index: Int = 0
    var img = UIImage(named:"midorihaikei.jpg")!

    override func viewDidLoad() {
        super.viewDidLoad() // Do any additional setup after loading the view.
        print(index)
        print(startIndex)
        numberLabel.text = numberArray[index - 1]
        kanjiLabel.text = kanjiArray[index - 1]
        kanjisakusyaLabel.text = kanjisakusyaArray[index - 1]
        hiraganaLabel.text = hiraganaArray[index + startIndex - 1]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index - 1]
        eigoLabel.text = eigoArray[index - 1]
        eigosakusyaLabel.text = eigosakusyaArray[index - 1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(){
        //それぞれのラベルに配列の要素を追加する
        numberLabel.text = numberArray[index + startIndex - 1]
        kanjiLabel.text = kanjiArray[index + startIndex - 1]
        kanjisakusyaLabel.text = kanjisakusyaArray[index + startIndex - 1]
        hiraganaLabel.text = hiraganaArray[index + startIndex - 1]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index + startIndex - 1]
        eigoLabel.text = eigoArray[index + startIndex - 1]
        eigosakusyaLabel.text = eigosakusyaArray[index + startIndex - 1]
        
        //indexの値を+1する
        index = index - 1
        
        //indexの値が0より小さくなったら9に戻る
        if index < startIndex + 1 {
            index = startIndex + indexCount
        }
        
        numberLabel.text = numberArray[index + /*startIndex*/ -1]
        kanjiLabel.text = kanjiArray[index + startIndex - 1]
        kanjisakusyaLabel.text = kanjisakusyaArray[index + startIndex - 1]
        hiraganaLabel.text = hiraganaArray[index + startIndex - 1]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index + startIndex - 1]
        eigoLabel.text = eigoArray[index + startIndex - 1]
        eigosakusyaLabel.text = eigosakusyaArray[index + startIndex - 1]
        
        print("\(index)が選択されました")
        
    }
    
    @IBAction func front(){
        //それぞれのラベルに配列の要素を追加する
        numberLabel.text = numberArray[index + startIndex - 1]
        kanjiLabel.text = kanjiArray[index + startIndex - 1]
        kanjisakusyaLabel.text = kanjisakusyaArray[index + startIndex - 1]
        hiraganaLabel.text = hiraganaArray[index + startIndex - 1]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index + startIndex - 1]
        eigoLabel.text = eigoArray[index + startIndex - 1]
        eigosakusyaLabel.text = eigosakusyaArray[index + startIndex - 1]
        
        //indexの値を+1する
        index = index + 1
    
    //indexの値が9より大きくなったら0に戻る
    if index > startIndex + indexCount {
    index = startIndex + 1
    }
        
        numberLabel.text = numberArray[index /*+ startIndex*/ - 1]
        kanjiLabel.text = kanjiArray[index + startIndex - 1]
        kanjisakusyaLabel.text = kanjisakusyaArray[index + startIndex - 1]
        hiraganaLabel.text = hiraganaArray[index + startIndex - 1]
        hiraganasakusyaLabel.text = hiraganasakusyaArray[index + startIndex - 1]
        eigoLabel.text = eigoArray[index + startIndex - 1]
        eigosakusyaLabel.text = eigosakusyaArray[index + startIndex - 1]
        
        print("\(index)が選択されました")
        
    }
    
    /*func changeVisible(visible: Bool) {
        if visible {
            View.isHidden = false
        } else {
            View.isHidden = true
        }
    }*/

    
    @IBAction func check(_ sender: Any) {
        if changeImageView.image == nil{
            changeImageView.image = nil
        }
    }
        //if check.is {
        //changeVisible(visible: true)
        //check.image = img
        /*} else {
            
        }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
 }
