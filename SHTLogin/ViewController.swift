//
//  ViewController.swift
//  SHTLogin
//
//  Created by Zian He on 2022/3/16.
//
import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
//    @IBOutlet weak var pass: UIButton!
//    @IBOutlet weak var username: UIButton!
    @IBOutlet weak var web1: WKWebView!
    
//    @IBAction func user(_ sender: UIButton) {
//        UIPasteboard.general.string = "heza"
//    }
//    @IBAction func pass(_ sender: UIButton) {
//        UIPasteboard.general.string = "heza111"
//    }
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        web1 = WKWebView(frame: .zero, configuration: webConfiguration)
//        web1.uiDelegate = self
//        view = web1
//    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        log()
    }
    
    func log(){
        if (!web1.isLoading) {
        let jsString = "document.getElementById('loginBtn').click()"
        web1.evaluateJavaScript(jsString, completionHandler: { result,error in
             print(result);})
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://controller.shanghaitech.edu.cn:8445/PortalServer/customize/1478262836414/phone/auth.jsp")
        let myRequest = URLRequest(url: myURL!)
        web1.load(myRequest)
        //Thread.sleep(forTimeInterval: 15)
    }
}
