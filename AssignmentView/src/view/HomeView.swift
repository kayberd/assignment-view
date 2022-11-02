//
//  HomeView.swift
//  AssignmentView
//
//  Created by Berkay Demirören on 1.11.2022.
//

import Foundation
import UIKit


class HomeView: UIView {
    // TODO: Create table view and append it in here
    var view: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        view = UIView(frame: frame)
        view?.backgroundColor = .blue
        super.addSubview(view!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
