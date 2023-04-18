//
//  WebDemoViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 18/04/23.
//

import UIKit
import WebKit

class WebDemoViewController: UIViewController {

    @IBOutlet private weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://www.google.com/") else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.webView.reload()
        }
        
//        guard let pdfUrl = Bundle.main.url(forResource: "Demo", withExtension: "pdf") else {
//            return
//        }
//        webView.loadFileURL(pdfUrl, allowingReadAccessTo: pdfUrl.deletingLastPathComponent())
        
        let timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(0.1), repeats: true) {
            (timer) in
            print(self.webView.estimatedProgress)
        }
    }
}

extension WebDemoViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let host = navigationAction.request.url?.host {
            if host == "www.google.com" {
                decisionHandler(.allow)
            }
        }
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
       print("start")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish")
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("commit")
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("Fail")
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print("fail completed")
    }
}
