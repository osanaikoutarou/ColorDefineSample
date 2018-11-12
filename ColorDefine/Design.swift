//
//  Design.swift
//  ColorDefine
//
//  Created by osanai on 2018/11/07.
//  Copyright © 2018年 osanai. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static var keyColor = UIColor(named: "keyColor")!
    static var subKeyColor = UIColor(named: "subKeyColor")!
}

//

enum Theme: String {
    case keyColor = "keyColor"
    case subKeyColor = "subKeyColor"

    enum TableView: String {
        case backgroundColor = "tableView.background"
    }
}

fileprivate extension RawRepresentable where RawValue == String {
    var color:UIColor {
        return UIColor(named: self.rawValue)!
    }
    var cgColor:CGColor {
        return color.cgColor
    }
}

extension UIColor {
    static var keyColor2 = Theme.keyColor
    static var subKeyColor2 = Theme.subKeyColor
}
