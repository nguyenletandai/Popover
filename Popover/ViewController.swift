//
//  ViewController.swift
//  Popover
//
//  Created by daicudu on 12/15/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination
        let pc = vc.popoverPresentationController
        pc?.sourceRect = CGRect(origin: self.view.center, size: CGSize.zero)
        pc?.delegate = self
    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    @IBAction func onClickedPassThoughtButton(_ sender: Any) {
        title = "Pass Though Clicked"
    }

}

