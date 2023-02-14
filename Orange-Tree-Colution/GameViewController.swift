//
//  GameViewController.swift
//  Orange-Tree-Colution
//
//  Created by Krystal Galdamez on 2/6/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelRect = CGRect(x: 50, y: 5, width: 300, height: 200)
        let label = UILabel(frame: labelRect)
        label.text = "Welcome to Crazy Orange's by Krystal"
        label.numberOfLines = 1
        label.textColor = SKColor(white: 8, alpha: 0.3)
        view.addSubview(label)
        
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = GameScene.Load(level: 1) {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
