//
//  DelegateCell.swift
//  MyTabBarController
//
//  Created by 仝兴伟 on 2017/8/15.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

import UIKit

// 代理
protocol DelegateCellDelegate :NSObjectProtocol {
    // 代理方法
    func giveLike(_ btn:UIButton)
}

class DelegateCell: UITableViewCell {
    // 声明按钮
    var likeButton: UIButton?
    
    weak var  delegate: DelegateCellDelegate?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        initSubViews()
    }
    
    func initSubViews() {
        let like = UIButton(type: .custom)
        like.frame = CGRect(x: UIScreen.main.bounds.size.width - 40, y: 10, width: 30, height: 30)
        like.backgroundColor = UIColor.orange
        like.setTitle("赞", for: UIControlState())
        like.addTarget(self, action: #selector(DelegateCell.lickClicked(_:)), for: .touchUpInside)
        likeButton = like
        self.addSubview(likeButton!)
    }
    
    // 实现代理方法
    func lickClicked(_ sender: UIButton) {
        delegate?.giveLike(sender)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
}
