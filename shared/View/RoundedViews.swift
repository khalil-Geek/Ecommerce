//
//  RoundedViews.swift
//  Ecommerce
//
//  Created by macbook pro on 08/04/2019.
//  Copyright © 2019 macbook pro. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        layer.cornerRadius = 5
    }
}

class RoundedShadow : UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 5
        layer.shadowColor = AppColor.Blue.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
    }
}

class RoundedImage : UIImageView {
    override func awakeFromNib() {
        layer.cornerRadius = 5 
    }
}
