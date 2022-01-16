//
//  StartViewController.swift
//  AZS
//
//  Created by Никита Гуляев on 13.01.2022.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    
    private let reviewViewController = ReviewViewController()
    
//    Start button
    private let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.addTarget(self, action: #selector(openReviewViewController), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(
            red: 44/255,
            green: 49/255,
            blue: 62/255,
            alpha: 1
        )
        startButtonConstraint() 
    }
    
    func startButtonConstraint() {
        view.addSubview(startButton)
        startButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    @objc func openReviewViewController() {
        self.present(reviewViewController, animated: true, completion: nil)
        reviewViewController.sheetPresentationController?.prefersGrabberVisible = true
    }
    
}

