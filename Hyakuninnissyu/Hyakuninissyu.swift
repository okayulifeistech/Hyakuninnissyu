//
//  Hyakuninissyu.swift
//  Hyakuninnissyu
//
//  Created by 岡部結衣 on 2018/11/02.
//  Copyright © 2018年 岡部結衣. All rights reserved.
//

import UIKit

class Hyakuninissyu {
    
    var number: String!//百人一首の番号
    
    var kanji: String!//上五
    
    var kanjisakusya: String!//中七
    
    var hiragana: String!//下五
    
    var hiraganasakusya: String!//下の句上の段
    
    var eigo: String!//下の句下の段
    
    var eigosakusya: String!//作者
    
    var imi: String!//意味
    
    /*var kanadukai1: String!//仮名遣いの違う文字１行目
     
     var kanadukai2: String!//仮名遣いの違う文字２行目*/
    
    //初期化　引数でこれらをもらって設定している
    init(number: String, kanji: String,kanjisakusya : String, hiragana: String, hiraganasakusya: String, eigo: String, eigosakusya: String, imi: String /*kanadukai1: String, kanadukai2: String*/ ){
        self.number = number
        self.kanji = kanji
        self.kanjisakusya = kanjisakusya
        self.hiragana = hiragana
        self.hiraganasakusya = hiraganasakusya
        self.eigo = eigo
        self.eigosakusya = eigosakusya
        self.imi = imi
        /*self.kanadukai1 = kanadukai1
         self.kanadukai2 = kanadukai2*/
    }
}
