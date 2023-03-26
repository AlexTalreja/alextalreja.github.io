//
//  ViewController.swift
//  WorkoutAppHooHacks
//
//  Created by Alex Talreja on 3/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var ArmsButton: UIButton!
    @IBOutlet weak var ChestButton: UIButton!
    @IBOutlet weak var LegsButton: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var BackButton: UIButton!
    var arms = false
    var legs = false
    var back = false
    var chest = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetButton.layer.opacity = 0
        label1.numberOfLines = 0
        label1.text = ""
        
        ArmsButton.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
        ChestButton.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
        BackButton.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
        LegsButton.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
        
        
        
    }
    
    
    let armList = [Exercises(n: "Bicep Curls", d: "Description of Bicep Curls"),
                   Exercises(n: "Seated Rows", d: "Description of Bicep Curls"),
                   Exercises(n: "Pull Ups", d: "Description of Bicep Curls"),
                   Exercises(n: "Preacher Curls", d: "Description of Bicep Curls")]
    
    let backList = [Exercises(n: "Lateral Pulldowns", d: "Description of Bicep Curls"),
                    Exercises(n: "Deadlift", d: "Description of Bicep Curls"),
                    Exercises(n: "Dumbbell Row", d: "Description of Bicep Curls"),
                    Exercises(n: "Bent-Over Row", d: "Description of Bicep Curls")]
    
    let chestList = [Exercises(n: "Push Ups", d: "Description of Bicep Curls"),
                     Exercises(n: "Bench Press", d: "Description of Bicep Curls"),
                     Exercises(n: "Chest Flys", d: "Description of Bicep Curls"),
                     Exercises(n: "Incline Press", d: "Description of Bicep Curls")]
    
    let legList = [Exercises(n: "Lunges", d: "Description of Bicep Curls"),
                   Exercises(n: "Squats", d: "Description of Bicep Curls"),
                   Exercises(n: "Calf Raises", d: "Description of Bicep Curls"),
                   Exercises(n: "Hip Raises", d: "Description of Bicep Curls"),
                   Exercises(n: "Step Ups", d: "Description of Bicep Curls")]
    
    @IBAction func buttonTapped(sender: AnyObject) {}
    
    @IBAction func resetPressed(_ sender: UIButton) {
        sender.layer.opacity = 0
        ArmsButton.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
        ChestButton.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
        BackButton.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
        LegsButton.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
        generateButton.layer.opacity = 100
        ArmsButton.layer.opacity = 100
        ChestButton.layer.opacity = 100
        
        LegsButton.layer.opacity = 100
        BackButton.layer.opacity = 100
        label1.layer.opacity = 0
        label1.text = ""
        label1.numberOfLines = 0
        arms = false
        legs = false
        back = false
        chest = false
    }
    @IBAction func generateTapped(_ sender: UIButton) {
        
        sender.layer.opacity = 0
        resetButton.layer.opacity = 100
        
        generateButton.layer.cornerRadius = 20
        generateButton.clipsToBounds = true
        ArmsButton.layer.opacity = 0
        ChestButton.layer.opacity = 0
        
        LegsButton.layer.opacity = 0
        BackButton.layer.opacity = 0
        
        label1.layer.opacity = 100
        
        var armI = 0
        var backI = 0
        var chestI = 0
        var legI = 0
        
        var countEach = 4
        while countEach > 0{
            if arms {
                label1.text! += " • " + armList[armI].name + "\n"
                armI+=1
                countEach-=1
            }
            if legs {
                label1.text! += " • " + legList[legI].name + "\n"
                legI+=1
                countEach-=1
            }
            if chest {
                label1.text! += " • " + chestList[chestI].name + "\n"
                chestI+=1
                countEach-=1
                
            }
            if back {
                label1.text! += " • " + backList[backI].name + "\n"
                backI+=1
                countEach-=1
            }
            
           
        }
        armI = 0
        backI = 0
        chestI = 0
        legI = 0
        
        ArmsButton.isSelected = false;
        ChestButton.isSelected = false;
        BackButton.isSelected = false;
        LegsButton.isSelected = false;
        
        
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        arms = !arms
        
        
            if sender.isSelected{
                sender.backgroundColor = UIColor(red: 58, green: 136, blue: 145, alpha: 1)
               }
            else{
                sender.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
             }
        
    }
    
    @IBAction func chestTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        chest = !chest
        
            if sender.isSelected{
                sender.backgroundColor = UIColor(red: 58, green: 136, blue: 145, alpha: 1)
               }
            else{
                sender.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
             }
    }
    
    

    @IBAction func backTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        back = !back

        
            if sender.isSelected{
                sender.backgroundColor = UIColor(red: 58, green: 136, blue: 145, alpha: 1)
               }
            else{
                sender.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
             }
    }
    
    @IBAction func legsTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        legs = !legs
        
            if sender.isSelected{
                sender.backgroundColor = UIColor(red: 58, green: 136, blue: 145, alpha: 1)
               }
            else{
                sender.backgroundColor = UIColor(red: 255, green: 239, blue: 214, alpha: 1)
             }
    }
    
}

