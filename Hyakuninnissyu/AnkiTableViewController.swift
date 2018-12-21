//
//  AnkiTableViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/11/16.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class AnkiTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hyakuninissyu1Array.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        //セルにhyakuninissyu1Arrayの百人一首を表示する
        cell?.textLabel?.text = hyakuninissyu1Array[indexPath.row]
        
        return cell!
    }
    

    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    //百人一首を入れるための配列
    var hyakuninissyu1Array = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        //TableViewのデータソースメソッドはAnkiTableViewControllerに書くよ、という設定
        table.dataSource = self
        
        //テーブルビューのデリゲートメソッドはAnkiTableViewControllerに書くよ、という設定
        table.delegate = self
        
        //hyakuninissyu1-10Arrayに入れていく
        hyakuninissyu1Array = ["1 秋の田の","2 春すぎて","3 あしびきの","4 田子の浦に","5 奥山に","6 かささぎに","7 天の原","8 我が庵は","9 花の色は","10 これやこの","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"]

        // Do any additional setup after loading the view.
    }
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
//        if (segue.identifier == "toAnkiViewController") {
//            let subVC: AnkiViewController = (segue.destination as? AnkiViewController)!
//        }
    //セルの数を指定
    //func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //セルの数をhyakuninissyu1Arrayの数にする
        //return hyakuninissyu1Array.count
    //}
    
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と表示させてみる
    /*func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell")*/
        
        //セルにhyakuninissyu1Arrayの百人一首を表示する
        /*cell?.textLabel?.text = hyakuninissyu1Array[indexPath.row]
        
        return cell!
        
    }*/
    
    //セルが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let nextView: ViewController = storyboard?.instantiateViewController(withIdentifier: "nextView") as! ViewController
//        self.present(nextView, animated: true, completion: nil)
        performSegue(withIdentifier: "toAnkiViewController", sender: nil)
        
        let ankiViewContoller = segue.destination as! AnkiViewController
    ankiViewContoller.index = self.index as! Int// ラベルのインスタンス作成のため…ダサいw 他にいい手はないのか.
        //11クイズを見れば正解の糸口がつかめるかも
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
}
