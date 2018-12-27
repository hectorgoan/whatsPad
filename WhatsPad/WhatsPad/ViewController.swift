//
//  ViewController.swift
//  WhatsPad
//
//  Created by Héctor Gonzalo Andrés on 27/12/2018.
//  Copyright © 2018 Héctor Gonzalo Andrés. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController, WKNavigationDelegate {

    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {

        super.viewDidLoad()

        let url = URL(string: "https://web.whatsapp.com/es")!
        webView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36"
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
    }


}

