//
//  ViewController.swift
//  xyz-machine
//
//  Created by Mariah Baysic on 3/30/20.
//  Copyright © 2020 SpacedOut. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLbl: UILabel!
    @IBOutlet weak var yLbl: UILabel!
    @IBOutlet weak var zLbl: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateXYZ)
    }

    func updateXYZ(data: CMAccelerometerData?, error: Error?) {
        guard let accelerometerData = data else { return }
    }
}

