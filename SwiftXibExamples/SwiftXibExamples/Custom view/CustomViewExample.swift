//
//  CustomViewExample.swift
//  SwiftXibExamples
//
//  Created by yair hadad on 03/12/2018.
//  Copyright © 2018 yair hadad. All rights reserved.
//

import Foundation
import SwiftXib

class CustomViewExample : SwiftXibView {
    // override nibName and return your nib name. ('nibName.xib')
    override var nibName: String {return "CustomViewExample"}
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    // setUI is call immediately after the view setUp.
    override func setUI() {
        image.image = #imageLiteral(resourceName: "Image1")
        nameLable.text = "Jack"
        lastNameLabel.text = "Sparrow"
        ageLabel.text = "35"
    }
}
