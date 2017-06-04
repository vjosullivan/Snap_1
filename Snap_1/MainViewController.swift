//
//  ViewController.swift
//  Snap_1
//
//  Created by Vincent O'Sullivan on 04/06/2017.
//  Copyright © 2017 Rose Cottage Industry. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var hostGameButton: UIButton!
    @IBOutlet weak var joinGameButton: UIButton!
    @IBOutlet weak var soloGameButton: UIButton!

    @IBOutlet weak var cardSView: UIImageView!
    @IBOutlet weak var cardNView: UIImageView!
    @IBOutlet weak var cardAView: UIImageView!
    @IBOutlet weak var cardPView: UIImageView!
    @IBOutlet weak var cardJokerView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

