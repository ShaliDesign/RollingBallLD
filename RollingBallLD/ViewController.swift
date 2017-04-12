//
//  ViewController.swift
//  RollingBallLD
//
//  Created by Linh&ShawnD on 2017-04-12.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var ball = UIImageView()
    var radians = CGFloat()
    var ballRadious = CGFloat()
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBall()
        //rollBall()
        RightToLeft()
       
      let time = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(rollBall), userInfo: nil, repeats: true)
    }
    
    
    
    
    
    func addBall()
    
    {
        let mainViewSize = self.view.bounds.size
        ball = UIImageView(image: UIImage(named: "ball.png"))
        ballRadious = 32.0
        ball.center = CGPoint(x: ballRadious, y: mainViewSize.height * 0.5)
        self.view.addSubview(ball)
    }
    
    func rollBall()
    {
        let deltaAngle: CGFloat = 0.1
        radians = radians + deltaAngle
        ball.transform = CGAffineTransform(rotationAngle: radians)
        ball.center = CGPoint(x: ball.center.x + ballRadious * deltaAngle, y: ball.center.y)
        
//        ball.center = CGPoint(x: ball.center.x + ballRadious * deltaAngle, y: ball.center.y + ballRadious * deltaAngle)
        
    }
        
    func RightToLeft()
    {
        
        UIView.animate(withDuration: 4, animations: {

            self.ball.center = CGPoint(x: self.view.bounds.size.width, y: self.view.bounds.size.height * 0.5)
            
        }) { (finished) in
       
                self.ball.center = CGPoint(x: self.ballRadious, y: self.view.bounds.size.height * 0.5)
            
            print("this is the end")
        }

 
    }
    
        
//            self.ball.transform = self.ball.transform.scaledBy(x: -1, y: 1).concatenating(CGAffineTransform(rotationAngle: 0))

        
//            UIView.animate(withDuration: 4, animations: {
//                self.ball.center = CGPoint(x: self.ball.center.x, y: self.ball.center.y)})
        
        
        }






