//
//  Extensions.swift
//  ChatFirebase
//
//  Created by Nguyen The Phuong on 11/29/17.
//  Copyright © 2017 Nguyen The Phuong. All rights reserved.
//

import UIKit

extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
    static func setStattusBarBackground(color: UIColor){
        UIApplication.shared.statusBarView?.backgroundColor = color
    }
}

extension UIViewController{
    func setupKeyboardGestureRecognizer(){
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
        view.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc private func dismissKeyBoard(){
        view.endEditing(true)
    }
    
//    var isHidden:Bool = false{
//        didSet{
//            UIView.animate(withDuration: 0.5) { () -> Void in
//                self.setNeedsStatusBarAppearanceUpdate()
//            }
//        }
//    }
    
//    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
//        return .slide
//    }
//    override var prefersStatusBarHidden: Bool{
//        return false
//    }
}

extension UITableViewCell {
    var tableView: UITableView? {
        var view = self.superview
        while (view != nil && view!.isKind(of: UITableView.self) == false) {
            view = view!.superview
        }
        return view as? UITableView
    }
}



extension UIColor{
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat){
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    static func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor{
        return UIColor(r: red, g: green, b: blue)
    }
    
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
}

