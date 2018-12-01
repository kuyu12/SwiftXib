//
//  SwiftXibTableViewCell.swift
//  SwiftXib
//
//  Created by yair hadad on 01/12/2018.
//  Copyright © 2018 yair hadad. All rights reserved.
//

import Foundation

/**
 Base view for xib View
 - Guidelines:
 - **override nibName property.**
 - use setUI metode for initializ views.
 */
open class SwiftXibTableViewCell : UITableViewCell {
    open var nibName : String { get {return ""} }
    
    /**
     - parameters:
     - style: UITableViewCellStyle
     */
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        // 2. call super.init(frame:)
        super.init(style: style,reuseIdentifier: reuseIdentifier)
        // 3. Setup view from .xib file
        self.xibSetup()
        self.setUI()
    }
    
    /**
     - parameters:
     - aDecoder: coder of view
     */
    required public init?(coder aDecoder: NSCoder) {
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        // 3. Setup view from .xib file
        xibSetup()
        self.setUI()
    }
    
    var view: UIView!
    
    fileprivate func xibSetup() {
        view = loadViewFromNib()
        // use bounds not frame or it'll be offset
        view.frame = bounds
        // Make the view stretch with containing view
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    fileprivate func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib:UINib = UINib(nibName: self.nibName, bundle: bundle)
        // Assumes UIView is top level and only object in CustomView.xib file]
        if let view = nib.instantiate(withOwner: self, options: nil)[0] as? UIView {
            return view
        }
        print("[SwiftXib] Your nibName: \(self.nibName) isn't setup correctly")
        return UIView()
    }
    
    /**
     setUI is call Immediately after the class is initialized
     */
    open func setUI(){}
    
}
