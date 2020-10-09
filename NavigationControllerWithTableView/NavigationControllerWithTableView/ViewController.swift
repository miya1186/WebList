//
//  ViewController.swift
//  NavigationControllerWithTableView
//
//  Created by miyazawaryohei on 2020/10/09.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    //シーン移動の際に設定されるWebデータ
    var data:(name:String, url:String)?
    override func viewDidLoad() {
        super.viewDidLoad()
       //dataが設定されていればwebDataに代入する
        guard let webData = data else {return}
        //表示するWebページのURLRepuestを作る
        let myURL = URL(string: webData.url)
        let myRequest = URLRequest(url: myURL!)
        //Webを読み込む
        webView.load(myRequest)
    }


}

