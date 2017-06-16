//
//  DrawingViewController.swift
//  DreamBig
//
//  Created by Andy Cho on 2017-06-13.
//  Copyright © 2017 AcroMace. All rights reserved.
//

import UIKit

class DrawingViewController: UIViewController {

    @IBOutlet weak var drawingImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didPressDoneButton(_ sender: Any) {
        // Trying to edit the "Main" storyboard currently crashes Xcode so the name can't be changed
        // Just use a transition and consolidate the two UIViewControllers to a single storyboard when the next beta comes out
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self))
        guard let mainViewController = mainStoryboard.instantiateInitialViewController() as? ViewController else {
            print("Could not create the Main view controller")
            return
        }
        navigationController?.pushViewController(mainViewController, animated: true)
    }

}