//
//  AnkiTableViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/11/16.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class AnkiTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //セクション毎の行の数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return indexCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell")
        //セルにhyakuninissyu1Arrayの百人一首を表示する
        cell?.textLabel?.text = hyakuninissyu1Array[indexPath.row + startIndex]
        return cell!
    }

    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    //百人一首を入れるための配列
    var hyakuninissyu1Array = [String]()
    
    var selectIndex: Int!
    var startIndex: Int!
    var indexCount: Int!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        //TableViewのデータソースメソッドはAnkiTableViewControllerに書くよ、という設定
        table.dataSource = self
        
        //テーブルビューのデリゲートメソッドはAnkiTableViewControllerに書くよ、という設定
        table.delegate = self
        
        //hyakuninissyu1-10Arrayに入れていく
        hyakuninissyu1Array = ["1 秋の田の　かりほの庵の　苫をあらみ　わが衣手は　露にぬれつつ","2 春すぎて　夏来にけらし　白妙の　衣ほすてふ　天の香具山","3 あしびきの　山鳥の尾の　しだり尾の　ながながし夜を　ひとりかも寝む","4 田子の浦に　うち出でてみれば　白妙の　富士の高嶺に　雪は降りつつ","5 奥山に","6 かささぎに","7 天の原","8 我が庵は","9 花の色は","10 これやこの","11 わたの原","12 天つ風","13 筑波嶺の","14 陸奥の","15 君がため","16 たち別れ","17 ちはやぶる","18 住の江の","19 難波潟","20 わびぬれば","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"]

        // Do any additional setup after loading the view.
    }
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any!){
        let ankiViewController = segue.destination as! AnkiViewController
        ankiViewController.index = self.selectIndex + startIndex//次の画面に表示するindexはselectIndex
        ankiViewController.selectIndex = self.selectIndex
        ankiViewController.startIndex = self.startIndex
        ankiViewController.indexCount = self.indexCount
        //11クイズを見れば正解の糸口がつかめるかも
    }

    
    //セルが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
        selectIndex = indexPath.row + 1
        performSegue(withIdentifier: "toAnkiViewController", sender: nil)
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
