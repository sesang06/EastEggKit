//
//  EasterEggPopupViewController.swift
//  EastEggKit
//
//  Created by 조세상 on 2019/08/04.
//

import UIKit

public class EasterEggPopupViewController: UIViewController {

  public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  public weak var image: UIImage? {
    didSet {
      self.popupImageView.image = self.image
    }
  }

  private let popupImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.backgroundColor = UIColor.black
    return imageView
  }()

  override public func viewDidLoad() {
    super.viewDidLoad()
    self.setupViews()
    self.setupGesture()
  }

  private func setupViews() {
    self.view.addSubview(self.popupImageView)
    if #available(iOS 9.0, *) {
      self.popupImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true

      self.popupImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
      self.popupImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
      self.popupImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    } else {

    }
  }


  private func setupGesture() {
    let recognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
    self.popupImageView.addGestureRecognizer(recognizer)
  }

  @objc
  private func handleTap() {

  }

}
