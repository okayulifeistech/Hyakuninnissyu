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
        hyakuninissyu1Array = ["1 秋の田の 仮庵の庵の 苫をあらみ 我が衣手は 露にぬれつつ","2 春過ぎて 夏来にけらし 白妙の 衣ほすてふ 天の香具山","3 あしびきの 山鳥の尾の しだり尾の ながながし夜を ひとりかも寝む","4 田子の浦に うち出でてみれば 白妙の 富士の高嶺に 雪は降りつつ","5 奥山に 紅葉踏みわけ 鳴く鹿の 声きく時ぞ 秋は悲しき","6 かささぎの 渡せる橋に 置く霜の 白きをみれば 夜ぞふけにける","7 天の原 ふりさけ見れば 春日なる 三笠の山に 出でし月かも","8 我が庵は 都のたつみ しかぞすむ よ世をうぢ山と 人はいふなり","9 花の色は うつりにけりな いたづらに わが身世にふる ながめせしまに","10 これやこの 行くも帰るも 別れては 知るも知らぬも 逢坂の関","11 わたの原 八十島かけて 漕ぎ出でぬと 人には告げよ 海人の釣舟","12 天つ風 雲の通ひ路 吹き閉ぢよ をとめの姿 しばしととめむ","13 筑波嶺の 峰より落つる 男女川 恋ぞ積もりて 淵となりぬる","14 陸奥の しのぶもぢづり 誰ゆゑに 乱れそめにし 我ならなくに","15 君がため 春の野に出でて 若菜つむ 我が衣手は 雪は降りつつ","16 たち別れ いなばの山の 峰に生ふる まつとし聞かば 今帰り来む","17 ちはやぶる 神代も聞かず 竜田川 からくれなゐに 水くくるとは","18 住の江の 岸による波 よるさへや 夢の通ひ路 人目よくらむ","19 難波潟 短かき芦の ふしの間も 逢はでこの世を 過ぐしてよとや","20 わびぬれば 今はた同じ 難波なる みをつくしても 逢はむとぞ思ふ","21 今来むと 言ひしばかりの 長月の 有明の月を 待ちいでつるかな","22 吹くからに 秋の草木の しをるれば むべ山風を 嵐といふらむ","23 月みれば ちぢにものこそ 悲しけれ わが身一つの 秋にはあらねど","24 このたびは ぬさもとりあへず 手向山 紅葉の錦 神のまにまに","25 名にしおはば 逢坂山の さねかづら 人に知られで くるよしもがな","26 小倉山 峰のもみぢ葉 心あらば 今ひとたびの みゆき待たなむ","27 みかの原 わきて流るる 泉川 いつみきとてか 恋しかるらむ","28 山里は 冬ぞさびしさ まさりける 人目も草も かれぬと思えば","29 心あてに 折らばや折らむ 初霜の 置きまどはせる 白菊の花","30 有明の つれなく見えし 別れより あかつきばかり 憂きものはなし","31 朝ぼらけ 有明の月と みるまでに 吉野の里に 降れる白雪","32 山川に 風のかけたる しがらみは 流れもあへぬ 紅葉なりけり","33 ひさかたの 光のどけき 春の日に 静心はなく 花の散るらむ","34 誰をかも 知る人にせむ 高砂の 松も昔も 友ならなくに","35 人はいさ 心も知らず ふるさとは 花ぞ昔の 友ならなくに","36 夏の夜は まだ宵ながら 明けぬるを 雲のいづこに 月宿るらむ","37 白露に 風の吹きしく 秋の野は つらぬきとめぬ 玉ぞ散りける","38 忘らるる 身をば思はず 誓ひてし 人の命の 惜しくもあるかな","39 浅茅生の 小野の篠原 しのぶれど あまりてなどか 人の恋しき","40 しのぶれど 色に出でにけり わが恋は ものや思ふと 人の問ふまで","41 恋すてふ わが名はまだき 立ちにけり 人知れずこそ 思いそめしか","42 契りきな かたみに袖を 絞りつつ 末の松山 波越さじとは","43 逢ひ見ての のちの心に くらぶれば 昔はものを 思はざりけり","44 逢ふことの 絶えてしなくは なかなかに 人をも身をも 恨みざらまし","45 あはれとも いふべき人は 思ほえで 身のいたづらに なりぬべきかな","46 由良のとを 渡る舟人 かぢをたえ 行くへも知らぬ 恋の道かな","47 八重葎 しげれる宿の さびしきに 人こそ見えね 秋は来にけり","48 風をいたみ 岩うつ波の おのれのみ くだけてものを 思ふころかな","49 みかきもり 衛士のたく火の 夜は燃え 昼は消えつつ 物をこそ思へ","50 君がため 惜しからざりし 命さへ 長くもがなと 思ひけるかな","51 かくとだに えやはいぶきの さしも草 さしも知らじな 燃ゆる思ひを","52 明けぬれば 暮るるものとは 知りながら なほうらめしき 朝ぼらけかな","53 嘆きつつ ひとり寝る夜の 明くる間は いかに久しき ものとかは知る","54 忘れじの 行く末までは かたければ 今日を限りの 命ともがな","55 滝の音は 絶えて久しく なりぬれど 名こそ流れて なほ聞こえけれ","56 あらざらむ この世のほかの 思ひ出に 今ひとたびの 逢ふこともがな","57 めぐりあひて 見しやそれとも わかぬ間に 雲がくれにし 夜半の月かな","58 有馬山 猪名の笹原 風吹けば いでそよ人を 忘れやはする","59 やすらはで 寝なましものを さ夜更けて かたぶくまでの 月を見しかな","60 大江山 いく野の道の 遠ければ まだふみもみず 天の橋立","61 いにしへの 奈良の都の 八重桜 けふ九重に にほひぬるかな","62 夜をこめて 鳥のそらねは はかるとも よに逢坂の 関はゆるさじ","63 今はただ 思ひ絶えなむ とばかりを 人づてならで 言ふよしもがな","64 朝ぼらけ 宇治の川霧 たえだえに あらはれわたる 瀬々の網代木","65 恨みわび ほさぬ袖だに あるものを 恋に朽ちなむ 名こそ惜しけれ","66 もろともに あはれと思へ 山桜 花よりほかに 知る人もなし","67 春の夜の  夢ばかりなる 手枕に かひなく立たむ 名こそ惜しけれ","68 心にも あらでうき世に ながらへば 恋しかるべき 夜半の月かな","69 嵐吹く み室の山の もみぢ葉は 竜田の川の 錦なりけり","70 さびしさに 宿を立ち出でて ながむれば いづこも同じ 秋の夕暮れ","71 夕されば  門田の稲葉 おとづれて 芦のまろやに 秋風ぞ吹く","72 音に聞く 高師の浜の あだ波は かけじや袖の ぬれもこそすれ","73 高砂の 尾の上の桜 咲きにけり 外山の霞 立たずもあらなむ","74 憂かりける 人を初瀬の 山おろしよ はげしかれとは 祈らぬものを","75 契りおきし させもが露を 命にて あはれ今年の 秋もいぬめり","76 わたの原 漕ぎ出でて見れば ひさかたの 雲居にまがふ 沖つ白波","77 瀬をはやみ 岩にせかるる 滝川の われても末に あはむとぞ思ふ","78 淡路島 かよふ千鳥の 鳴く声に いく夜寝覚めぬ 須磨の関守","79 秋風に たなびく雲の 絶え間より もれ出づる月の 影のさやけさ","80 長からむ 心も知らず 黒髪の 乱れて今朝は 物をこそ思へ","81 ほととぎす 鳴きつる方を ながむれば ただ有明の 月ぞ残れる","82 思ひわび さても命は あるものを 憂きにたへぬは 涙なりけり","83 世の中よ 道こそなけれ 思ひ入る 山の奥にも 鹿ぞ鳴くなる","84 長らへば またこのごろや しのばれむ 憂しと見し世ぞ 今は恋しき","85 夜もすがら 物思ふころは 明けやらで 閨のひまさへ つれなかりけり","86 嘆けとて 月やは物を 思はする かこち顔なる わが涙かな","87 村雨の 露もまだひぬ 真木の葉に 霧立ちのぼる 秋の夕暮れ","88 難波江の 芦のかりねの ひとよゆゑ みをつくしてや 恋ひわたるべき","89 玉の緒よ 絶えなば絶えね ながらへば 忍ぶることの よわりもぞする","90 見せばやな 雄島のあまの 袖だにも ぬれにぞぬれし 色はかはらず","91 きりぎりす 鳴くや霜夜の さむしろに 衣かたしき ひとりかも寝む","92 わが袖は 潮干に見えぬ 沖の石の 人こそ知らね かわく間もなし","93 世の中は 常にもがもな 渚こぐ あまの小舟の 綱手かなしも","94 み吉野の 山の秋風 さ夜更けて ふるさと寒く 衣うつなり","95 おほけなく うき世の民に おほふかな わが立つ杣に 墨染の袖","96 花さそふ 嵐の庭の 雪ならで ふりゆくものは わが身なりけり","97 来ぬ人を まつほの浦の 夕なぎに 焼くや藻塩の 身もこがれつつ","98 風そよぐ ならの小川の 夕暮れは みそぎぞ夏の しるしなりける","99 人も惜し 人も恨めし あぢきなく 世を思ふゆゑに 物思ふ身は","100 ももしきや 古き軒端の しのぶにも なほあまりある 昔なりけり"]

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
