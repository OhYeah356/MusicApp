//
//  ViewController.swift
//  MusicApp
//
//  Created by Jan Vrzal on 22/01/2017.
//  Copyright © 2017 Jan Vrzal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isButtonPressed = false
    
    let mainView = MainView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.addSubview(mainView.button)
        
        if let touch = touches.first {
            let position = touch.location(in: view)
            mainView.changePositon(x: position.x, y: position.y, view: view)
        }
        
        isButtonPressed = true
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.location(in: view)
            mainView.changePositon(x: position.x, y: position.y, view: view)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        mainView.button.removeFromSuperview()
        
        isButtonPressed = false
    }
    
    func setView()
    {
        view.backgroundColor = .white
        view.addSubview(mainView.middleView)
    }
}

