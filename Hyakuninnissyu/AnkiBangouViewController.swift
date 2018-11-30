//
//  AnkiBangouViewController.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/09/16.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class AnkiBangouViewController: UIViewController {
    
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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toAnkiTableViewController") {
            let AnkiTableViewController = segue.destination as! AnkiTableViewController
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ichiAnkiLabel() {
        
    }
    
    @IBAction func niAnkiLabel() {
        
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
