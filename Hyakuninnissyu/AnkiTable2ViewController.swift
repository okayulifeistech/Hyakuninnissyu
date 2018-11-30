//
//  AnkiTable2ViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/11/16.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//
import UIKit

     class AnkiTable2ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    //曲名を入れるための配列
    var hyakuninissyu1Array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TableViewのデータソースメソッドはAnkiTableViewControllerに書くよ、という設定
        table.dataSource = self
        
        //テーブルビューのデリゲートメソッドはAnkiTableViewControllerに書くよ、という設定
        table.delegate = self
        
        //hyakuninissyu1-10Arrayに入れていく
        hyakuninissyu1Array = ["わたの原","天つ風","筑波嶺の","陸奥の","君がため","立ち別れ","ちはやぶる","住の江の","難波潟","わびぬれば"]
        
        // Do any additional setup after loading the view.
    }
    //セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //セルの数をhyakuninissyu1Arrayの数にする
        return hyakuninissyu1Array.count
    }
    
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        //セルにhyakuninissyu1Arrayの百人一首を表示する
        cell?.textLabel?.text = hyakuninissyu1Array[indexPath.row]
        
        return cell!
        
    }
    
    //セルが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(hyakuninissyu1Array[indexPath.row])が選ばれました！")
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
