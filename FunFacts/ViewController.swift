//
//  ViewController.swift
//  FunFacts
//
//  Created by Jhonatan Laguna on 24/02/16.
//  Copyright © 2016 Jhonatan Laguna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    let factModel = FactModel()
    let colorModel = ColorModel()
    @IBOutlet weak var factsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let color = colorModel.getRandomColor()
        view.backgroundColor = color
        factsButton.tintColor = color
        funFactLabel.text = factModel.getRandomFact()
        
    }

}

