//
//  UIViewExtension.swift
//  joke
//
//  Created by liubo on 16/7/26.
//  Copyright © 2016年 liubo. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    //x--left
    public var x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            self.frame.origin.x = newValue
        }
    }
    //y--top
    public var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            self.frame.origin.y = newValue
        }
    }
    //width
    public var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            self.frame.size.width = newValue
        }
    }
    //height
    public var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            self.frame.size.height = newValue
        }
    }
    //right
    public var right: CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set {
            self.frame.origin.x = newValue - self.frame.size.width
        }
    }
    //bottom
    public var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set {
            self.frame.origin.y = newValue - self.frame.size.height
        }
    }
    
    //中心x
    public var centerX :CGFloat {
        get {
            return self.center.x
        }
        set {
            self.center.x = newValue
        }
    }
    
    //中心y
    public var centerY :CGFloat {
        get {
            return self.center.y
        }
        set {
            self.center.y = newValue
        }
    }
    
    public var orign: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            self.frame.origin = newValue
        }
    }
    
    public var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            self.frame.size = newValue
        }
    }
    
//    public var moddle: CGPoint {
//        get {
//            return CGPointMake(self.frame.origin.x + self.frame.size.width/2.0, self.frame.origin.y + self.frame.size.height/2.0)
//        }
//        set {
//            self.frame.origin.x = newValue.x - self.frame.size.width/2.0
//            self.frame.origin.y = newValue.y - self.frame.size.height/2.0
//        }
//    }
}