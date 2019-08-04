//
//  EasterEggView.swift
//  EastEggKit
//
//  Created by 조세상 on 2019/08/04.
//


import UIKit

public class EasterEggView: UIView {


  private var touchTimes: Int = 0

  private var triggeTouchTimes: Int = 5

  private var lock = NSLock()

  public override init(frame: CGRect) {
    super.init(frame: frame)
    self.isUserInteractionEnabled = true
    self.setupGesture()
  }


  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }


  private func setupGesture() {
    let recognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
    recognizer.numberOfTapsRequired = 1
    self.addGestureRecognizer(recognizer)
  }

  @objc
  func handleTap(recognizer: UITapGestureRecognizer) {
//    self.lock.lock()
//    defer { self.lock.unlock() }
    print(self.touchTimes)
//    self.touchTimes = self.touchTimes + 1
//    guard self.triggeTouchTimes < self.touchTimes else { return }
//
//    self.touchTimes = 0
    self.showEasterEggPopup()
  }

  private func showEasterEggPopup() {
    guard let vc = self.parentViewController else { return }
    let popupViewController = EasterEggPopupViewController()
    vc.present(popupViewController, animated: false)
  }

  private var parentViewController: UIViewController? {
    var parentResponder: UIResponder? = self
    while parentResponder != nil {
      parentResponder = parentResponder?.next
      if let viewController = parentResponder as? UIViewController {
        return viewController
      }
    }
    return nil
  }
}
