//
//  ViewController.swift
//  SLTest
//
//  Created by 田中亮一 on 2020/09/03.
//  Copyright © 2020 GOGA, Inc. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

	var webView: WKWebView!

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
	
    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string: "https://ve.m.smt.docomo.ne.jp/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
	
}
