//
//  NumberedViewController.swift
//  screens(iOS)
//
//  Created by Kendra McVay on 2/11/20.
//  Copyright © 2020 Kendra McVay. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))
//grabbing a label object,
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label)
        //draggin onto canvas.
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.center = view.center
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = navigationController?.viewControllers.count {
            label.text = String(number)
        }
    }
    @IBAction func doneButtonTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
