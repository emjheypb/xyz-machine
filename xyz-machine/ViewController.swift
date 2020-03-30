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
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        
        xLbl.text = "X: \(formatter.string(for: accelerometerData.acceleration.x)!)"
        yLbl.text = "Y: \(formatter.string(for: accelerometerData.acceleration.y)!)"
        zLbl.text = "Z: \(formatter.string(for: accelerometerData.acceleration.z)!)"
    }
}

