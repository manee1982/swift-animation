//
//  CustomeButton.swift
//  swift-animation
//
//  Created by Smart Visions on 3/3/18.
//  Copyright © 2018 Smart Visions. All rights reserved.
//

import UIKit

@IBDesignable
class CustomeButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        createView()
    }
    
    override func prepareForInterfaceBuilder() {
        createView()
    }
    
    func createView() {
        layer.cornerRadius = 10
    }

}
