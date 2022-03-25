//
//  DetailViewController.swift
//  Ind03_Goertemiller_Nicholas
//
//  Created by Nicholas Goertemiller on 3/23/22.
//

import UIKit


class DetailViewController: UIViewController {
  @IBOutlet weak var detailDescriptionLabel: UILabel!
  @IBOutlet weak var testImageView: UIImageView!
  
  var test: State? {
    didSet {
      configureView()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureView()
  }
  
  func configureView() {
    if let test = test,
      let detailDescriptionLabel = detailDescriptionLabel,
      let testImageView = testImageView {
      detailDescriptionLabel.text = test.name
      testImageView.image = UIImage(named: test.name)
      title = test.nickName.rawValue
    }
  }
}
