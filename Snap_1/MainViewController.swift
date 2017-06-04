//
//  ViewController.swift
//  Snap_1
//
//  Created by Vincent O'Sullivan on 04/06/2017.
//  Copyright © 2017 Rose Cottage Industry. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    private var buttonsEnabled: Bool {
        get {
            return hostGameButton.isEnabled
        }
        set {
            hostGameButton.isEnabled = newValue
            joinGameButton.isEnabled = newValue
            soloGameButton.isEnabled = newValue
        }
    }

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

        hostGameButton.applySnapStyle()
        joinGameButton.applySnapStyle()
        soloGameButton.applySnapStyle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        prepareForIntroAnimation()
    }

    override func viewDidAppear(_ animated: Bool) {
        performIntroCardAnimation()
        performIntroButtonAnimation()
    }

    // MARK: - Local functions.

    private func prepareForIntroAnimation() {
        cardSView.isHidden = true
        cardNView.isHidden = true
        cardAView.isHidden = true
        cardPView.isHidden = true
        cardJokerView.isHidden = true

        hostGameButton.alpha = 0.0
        joinGameButton.alpha = 0.0
        soloGameButton.alpha = 0.0

        buttonsEnabled = false
    }

    private func performIntroCardAnimation() {

        cardSView.isHidden = false
        cardNView.isHidden = false
        cardAView.isHidden = false
        cardPView.isHidden = false
        cardJokerView.isHidden = false

        let point = CGPoint(x: view.bounds.size.width / 2.0, y: view.bounds.size.height * 2.0)

        cardSView.center = point;
        cardNView.center = point;
        cardAView.center = point;
        cardPView.center = point;
        cardJokerView.center = point;

        UIView.animate(withDuration:0.65, delay:0.5, options: .curveEaseOut, animations: {
            self.cardSView.center = CGPoint(x: 80.0, y: 108.0)
            self.cardSView.transform = CGAffineTransform(rotationAngle: -0.22)

            self.cardNView.center = CGPoint(x: 160.0, y: 93.0)
            self.cardNView.transform = CGAffineTransform(rotationAngle: -0.1)

            self.cardAView.center = CGPoint(x: 240.0, y: 88.0)

            self.cardPView.center = CGPoint(x: 320.0, y: 93.0)
            self.cardPView.transform = CGAffineTransform(rotationAngle: 0.1)

            self.cardJokerView.center = CGPoint(x: 400.0, y: 108.0)
            self.cardJokerView.transform = CGAffineTransform(rotationAngle: 0.22)
        },
        completion: nil)
    }

    private func performIntroButtonAnimation() {
        UIView.animate(withDuration: 0.5, delay: 1.0, options: .curveEaseOut, animations: {
            self.hostGameButton.alpha = 1.0
            self.joinGameButton.alpha = 1.0
            self.soloGameButton.alpha = 1.0
            }, completion: { (Bool) in
                self.buttonsEnabled = true
            })
    }
}

