//
//  ViewController.swift
//  AnimationWithSpring
//
//  Created by Zalman Zoteev on 14/06/2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    let info = Description.getDescription() // Почему не дает назвать свойство description?
    
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var animationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = "Нажми"
        curveLabel.text = "На"
        forceLabel.text = "Кнопку"
        durationLabel.text = "Получишь"
        delayLabel.text = "Результат"
        
    }


    @IBAction func runAnimationButton(_ sender: SpringButton) {
        let animation = info.animation.randomElement() ?? ""
        let curve = info.curve.randomElement() ?? ""
        let force = info.force.randomElement() ?? 1
        let duration = info.duration.randomElement() ?? 1
        let delay = info.delay.randomElement() ?? 1
        
        animationView.animation = animation
        animationView.curve = curve
        animationView.force = force
        animationView.duration = duration
        animationView.delay = delay
        animationView.animate()
        
        animationLabel.text = "Animation: \(animation)"
        curveLabel.text = "Curve: \(curve)"
        forceLabel.text = "Force: \(force)"
        durationLabel.text = "Duration: \(duration)"
        delayLabel.text = "Delay: \(delay)"
        
        sender.setTitle("Run \(animation)", for: .normal)
    }
}

