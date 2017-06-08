//
//  HostViewController.swift
//  Snap_1
//
//  Created by Vincent O'Sullivan on 04/06/2017.
//  Copyright © 2017 Rose Cottage Industry. All rights reserved.
//

import UIKit

class HostViewController: UIViewController {

    // MARK: - Outlets.

    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameEntry: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var startButton: UIButton!

    // MARK: - Delegate.

    public var delegate: HostViewControllerDelegate?

    // MARK: - UIViewController functions.

    override func viewDidLoad() {
        super.viewDidLoad()
        headingLabel.font = UIFont.snapFont(ofSize: 24)
        nameLabel.font = UIFont.snapFont(ofSize: 16)
        statusLabel.font = UIFont.snapFont(ofSize: 16)
        nameEntry.font = UIFont.snapFont(ofSize: 20)

        startButton.applySnapStyle(withFontSize: 20)

        // Taps outside text entry field dismiss keyboard.
        let gestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(resignFirstResponder))
        gestureRecognizer.cancelsTouchesInView = false
        view.addGestureRecognizer(gestureRecognizer)
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscape
    }

    // MARK: - Actions.

    @IBAction func startAction(_ sender: UIButton) {
    }

    @IBAction func exitAction(_ sender: UIButton) {
        print("eA")
        delegate?.hostViewControllerDidCancel(controller: self)
    }
}

extension HostViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"

        return cell
    }
}

extension HostViewController: UITableViewDelegate {

}

extension HostViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder
        return false
    }
}
