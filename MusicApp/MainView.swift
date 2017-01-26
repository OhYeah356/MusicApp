//
//  MainView.swift
//  MusicApp
//
//  Created by Jan Vrzal on 26/01/2017.
//  Copyright © 2017 Jan Vrzal. All rights reserved.
//

import UIKit

class MainView
{    
    let button: UIView = {
        let button = UIView()
        button.frame = CGRect(x: 50, y: 350, width: 100, height: 100)
        button.backgroundColor = .red
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        return button
    }()
    
    let middleView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 250, width: 500, height: 5)
        view.backgroundColor = .black
        return view
    }()
    
    func changePositon(x: CGFloat, y: CGFloat, view: UIView)
    {
        if  y > view.frame.midY {
            button.frame = CGRect(x: x - 50, y: y - 50, width: 100, height: 100)
        }
    }
}
