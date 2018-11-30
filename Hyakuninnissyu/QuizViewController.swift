//
//  QuizViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/11/02.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    //問題文を格納する配列
    var quizArray = [Any]()
    
    //正解数
    var correctAnswer: Int = 0
    
    //クイズを表示するLabel
    @IBOutlet var kamigoLabel: UILabel!
    @IBOutlet var nakashichiLabel: UILabel!
    @IBOutlet var shimogoLabel: UILabel!
    @IBOutlet var shimonoku1Label: UILabel!
    @IBOutlet var shimonoku2Label: UILabel!
    @IBOutlet var sakusyaLabel: UILabel!
    
    //クイズを表示するtextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    @IBOutlet var choiceButton4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //一時的にクイズを格納ししておく配列
        var tmpArray = [Any]()
        
        //tmpArrayに問題文、4つの選択肢、答えの番号が入った配列を追加しておく
        tmpArray.append(["","","","",])
        
        //問題をシャッフルしてquizArrayに格納する
        while (tmpArray.count > 0) {
            let index = Int(arc4random()) % tmpArray.count
            quizArray.append(tmpArray[index])
            tmpArray.remove(at: index)
        }
        
        choiceQuiz()

        // Do any additional setup after loading the view
    }
    
    func choiceQuiz() {
        //一時的にクイズを取り出す配列
        let tmpArray = quizArray[0] as! [Any]
        
        //問題文のテキストを表示
        quizTextView.text = tmpArray[0] as! String
        
        //選択肢のボタンにそれぞれせ選択肢のテキストをセット
        choiceButton1.setTitle(tmpArray[1] as? String, for: .normal)
        choiceButton2.setTitle(tmpArray[2] as? String, for: .normal)
        choiceButton3.setTitle(tmpArray[3] as? String, for: .normal)
        choiceButton4.setTitle(tmpArray[4] as? String, for: .normal)
        
    }
        
        @IBAction func choiceAnswer(sender: UIButton) {
        //引数のsender.tagに格納されているTagの値を使って処理を区別する
            
            let tmpArray = quizArray[0] as! [Any]
            
            if tmpArray[4] as! Int == sender.tag {
                
                //正解数を増やす
                correctAnswer = correctAnswer + 1
            }
            
            //解いた問題をquizArrayから取り除く
            quizArray.remove(at: 0)
            
            //解いた問題数の合計があらかじめ設定していた問題数に達したら結果画面へ
            /*
            if quizArray.count == 0 {
                performSegueToResult()
            } else {
                choiceQuiz()
            }
            
            func performSegueToResult() {
                performSegue(withIdentifier: "toResultView", sender: nil)
            }
            
            //セグエを準備(prepare)する時に呼ばれるメソッド
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "toResultView" {
                    let resultViewController = segue.destination as! ResultViewController
                    resultViewController.correctAnswer  = self.correctAnswer
                }
            }
             */
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
