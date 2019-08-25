//
//  ViewController.swift
//  Bulls Eye
//
//  Created by Tolga TANER on 3.08.2019.
//  Copyright © 2019 Tolga TANER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlet
    @IBOutlet weak var targetValueLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var currentValueSlider: UISlider!
    
    
    //MARK: Properties
    private var currentValue:Int = 50
    private var targetValue:Int = 0
    private var round :Int = 1
    private var currentScore : Int = 0
    private var maxScore : Int = 0
    
    //MARK: Life cyles
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSlider()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let unwrappedNavigationController = navigationController {
            unwrappedNavigationController.setNavigationBarHidden(true, animated: true)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let unwrappedNavigationController = navigationController {
            unwrappedNavigationController.setNavigationBarHidden(false, animated: true)
        }
    }
    
    
    
    //MARK: Actions
    @IBAction func hitMeButtonTapped(_ sender: Any) {
        // Defines an alert.
        let alert = UIAlertController(title: "Score", message: String(currentValue), preferredStyle: .alert)
        //Defines an action.
//        let actionTitle : String = setActionTitle()
        let action = UIAlertAction(title: "OK", style: .default) { (alert) in
            //Triggers when button tapped.
            //print("CurrentValue:",self.currentValue)
            //print("AWESOME TRIGGERED")
        }
        // Adds action to alert.
        alert.addAction(action)
        // Shows alert.
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    private func startNewRound(){
        // Increase round.
        round += 1
        //Sets target value.
        targetValue = Int.random(in: 1...100)
        
        calculateScore(targetValue: targetValue, currentValue: currentValue)
        //Updates target value label.
        updateLabels()
    }
    
    private func calculateScore(targetValue:Int,currentValue:Int) {
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        currentScore = points
        maxScore = max(currentScore,maxScore)
    }
    
    private func updateLabels() {
        targetValueLabel.text = String(targetValue)
        roundLabel.text = String(round)
        scoreLabel.text = String(maxScore)
    }
    
    
    private func clear() {
        startNewRound()
        currentValueSlider.setValue(50, animated: true)
        round = 1
    }
    
    private func configureSlider() {
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")
        let trackLeftImage = UIImage(named: "SliderTrackLeft")
        let trackRightImage = UIImage(named: "SliderTrackRight")
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let resizeTrackLeftImage = trackLeftImage?.resizableImage(withCapInsets: insets)
        let resizeTrackRightImage = trackRightImage?.resizableImage(withCapInsets: insets)
        
        currentValueSlider.setThumbImage(thumbImageNormal, for: .normal)
        currentValueSlider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        currentValueSlider.setMinimumTrackImage(resizeTrackLeftImage, for: .normal)
        currentValueSlider.setMaximumTrackImage(resizeTrackRightImage, for: .normal)
    }
    
    
//    func setActionTitle()->String{
//        switch currentValue {
//        case 50:
//            return "Enough"
//        default:
//            return "Awesome"
//        }
//    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let sliderValue = sender.value.rounded()
        currentValue = Int(sliderValue)
//        print("Slider Value:(Float)",sliderValue)
//        print("Current Value:(Int)",currentValue)
    }
    
    @IBAction func infoButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let infoViewController =  storyboard.instantiateViewController(withIdentifier: "InfoViewController") as? InfoViewController {
            self.navigationController?.pushViewController(infoViewController, animated: true)
        }
    }
    
    @IBAction func repeatButtonTapped(_ sender: Any) {
        clear()
    }
    
    
}


extension ViewController {
    func newClear(){
        clear()
    }
}
