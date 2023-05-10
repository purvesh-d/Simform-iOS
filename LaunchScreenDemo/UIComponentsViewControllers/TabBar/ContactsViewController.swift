//
//  ContactsViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 20/04/23.
//

import UIKit
import WebKit

class ContactsViewController: UIViewController {

    @IBOutlet private weak var pdfWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let pdfUrl = Bundle.main.url(forResource: "Demo", withExtension: "pdf") else {
            return
        }
        pdfWebView.loadFileURL(pdfUrl, allowingReadAccessTo: pdfUrl.deletingLastPathComponent())
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.pdfWebView.reload()
        }
        
    }
}
