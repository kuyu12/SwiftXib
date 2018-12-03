//
//  CustomTableViewCell.swift
//  SwiftXibExamples
//
//  Created by yair hadad on 03/12/2018.
//  Copyright © 2018 yair hadad. All rights reserved.
//

import Foundation
import SwiftXib

class CustomTableViewCell : SwiftXibTableViewCell {
    // override nibName and return your nib name. ('nibName.xib')
    override var nibName: String {return "CustomTableViewCell"}
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    // setUI is call immediately after the view setUp.
    override func setUI() {
        lable1.text = "My Custom Cell"
        label2.text = "Yay!"
        myImage.image = #imageLiteral(resourceName: "image2")
    }
}
