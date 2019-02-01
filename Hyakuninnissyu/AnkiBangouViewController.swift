//
//  AnkiBangouViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/09/16.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class AnkiBangouViewController: UIViewController {
    
    var saveData:UserDefaults = UserDefaults.standard
    
    @IBOutlet var ichiAnkiButton: UIButton!
    @IBOutlet var niAnkiButton: UIButton!
    @IBOutlet var sanAnkiButton: UIButton!
    @IBOutlet var yonAnkiButton: UIButton!
    @IBOutlet var goAnkiButton: UIButton!
    @IBOutlet var rokuAnkiButton: UIButton!
    @IBOutlet var nanaAnkiButton: UIButton!
    @IBOutlet var hachiAnkiButto:UIButton!
    @IBOutlet var kyuuAnkiButton: UIButton!
    @IBOutlet var juuAnkiButton: UIButton!
    @IBOutlet var zenbuAnkiButton: UIButton!
    @IBOutlet var checklistAnkiButton: UIButton!
    var tappedTag: Int!
    var selectIndex: Int!
    var startIndex: Int!
    var indexCount: Int!
    var checkArray :[String] = []//checkList用の配列
    
    override func viewDidLoad() {
        
        for _ in 0...99 {
            checkArray.append("0")
        }
        
        saveData.set(checkArray, forKey: "check")
        
        print(checkArray)
        
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toAnkiTable") {
            if tappedTag == 1 {
                startIndex = 0
                indexCount = 10
            } else if tappedTag == 2 {
                startIndex = 10
                indexCount = 10
            } else if tappedTag == 3 {
                startIndex = 20
                indexCount = 10
            } else if tappedTag == 4 {
                startIndex = 30
                indexCount = 10
            } else if tappedTag == 5 {
                startIndex = 40
                indexCount = 10
            } else if tappedTag == 6 {
                startIndex = 50
                indexCount = 10
            } else if tappedTag == 7 {
                startIndex = 60
                indexCount = 10
            } else if tappedTag == 8 {
                startIndex = 70
                indexCount = 10
            } else if tappedTag == 9 {
                startIndex = 80
                indexCount = 10
            } else if tappedTag == 10 {
                startIndex = 90
                indexCount = 10
            } else if tappedTag == 11 {
                startIndex = 0
                indexCount = 50
            } else if tappedTag == 12 {
                startIndex = 0
                indexCount = 100
            }
            let AnkiTableViewController = segue.destination as! AnkiTableViewController
            //値の受け渡し(segue)のコードを書く
            AnkiTableViewController.selectIndex = self.selectIndex
            AnkiTableViewController.startIndex = self.startIndex
            AnkiTableViewController.indexCount = self.indexCount
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*@IBAction func ichiAnkiLabel() {
        
    }
    
    @IBAction func niAnkiLabel() {
        
    }*/
    
    @IBAction func toAnkiTable(sender: AnyObject) {
        tappedTag = sender.tag
        performSegue(withIdentifier: "toAnkiTable", sender: nil)
    }
    
    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func checkList(){
        
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
