//
//  ToolBarDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 20/04/23.
//

import UIKit
import WebKit

class ToolBarDemoViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet private weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.navigationDelegate = self
        guard let url = URL(string: "https://www.google.com/") else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    
    @IBAction func backButtonAction(_ sender: UIBarButtonItem) {
        if (webView.canGoBack) {
            webView.goBack()
        }
    }
    
    @IBAction func forwardButtonAction(_ sender: UIBarButtonItem) {
        if (webView.canGoForward) {
            webView.goForward()
        }
    }
    
    @IBAction func refreshItems(_ sender: UIBarButtonItem) {
        self.webView.reload()
    }
}
