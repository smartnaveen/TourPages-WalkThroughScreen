//
//  ViewController.swift
//  TourPages
//
//  Created by Mr. Naveen Kumar on 14/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "hasViewedWalkthrough") {
            //get true
            return
        }
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let walkthroughViewController = storyboard.instantiateViewController(withIdentifier: "WalkthroughViewController") as? WalkthroughViewController {
            present(walkthroughViewController, animated: true, completion: nil)
        }
    }
}

