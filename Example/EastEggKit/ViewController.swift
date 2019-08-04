//
//  ViewController.swift
//  EastEggKit
//
//  Created by sesang06 on 08/04/2019.
//  Copyright (c) 2019 sesang06. All rights reserved.
//

import UIKit
import EastEggKit

class ViewController: UIViewController {

  let easterEggView = EasterEggView()

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.white
    self.setupViews()
  }

  private func setupViews() {
    self.view.addSubview(self.easterEggView)
    self.easterEggView.translatesAutoresizingMaskIntoConstraints = false
    self.easterEggView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    self.easterEggView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    self.easterEggView.widthAnchor.constraint(equalToConstant: 100).isActive = true
    self.easterEggView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    self.easterEggView.backgroundColor = UIColor.black
//    self.easterEggView.isUserInteractionEnabled = true
//
//    self.view.isUserInteractionEnabled = false


//    let recognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
//    recognizer.numberOfTapsRequired = 1
//    self.easterEggView.addGestureRecognizer(recognizer)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  @objc func handleTap() {
  print("A")
  }
}

