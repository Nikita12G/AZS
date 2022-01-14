//
//  ReviewViewController.swift
//  AZS
//
//  Created by Никита Гуляев on 14.01.2022.
//

import UIKit
import SnapKit

class ReviewViewController: UIViewController {
    
    
    private let grayStripe: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        view.backgroundColor = .systemGreen
        return view
    }()
    
    private let timeLabel : UILabel = {
        let label = UILabel()
        label.text = "\(day) \(month) \(hour) : \(minute)"
        return label
    }()
    
    private let purchaseAmountLabel: UILabel = {
        let label = UILabel()
        label.text = "279,23"
        return label
    }()
    
    private let selectRatingLabel: UILabel = {
        let label = UILabel()
        label.text = "Выберите оценку"
        label.textColor = .systemGray
        return label
    }()
    
    private let sendButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Oтправить", for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(sendButtonTaped), for: .touchUpInside)
        return button
    }()
    
    private let evaluateAnotherTimeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Oценить в другой раз", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(evaluateAnotherTimeButtonTaped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        timeLabelConstraint()
        purchaseAmountLabelConstraint()
        sendButtonConstrain()
        evaluateAnotherTimeButtonConstraint()
        selectRatingLabelConstraint()
        grayStripeConstraint()
    }

    private func timeLabelConstraint() {
        view.addSubview(timeLabel)
        timeLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(30)
            make.left.equalToSuperview().inset(20)
        }
    }
    
    private func purchaseAmountLabelConstraint() {
        view.addSubview(purchaseAmountLabel)
        purchaseAmountLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(30)
            make.right.equalToSuperview().inset(20)
        }
    }
    
    private func sendButtonConstrain() {
        view.addSubview(sendButton)
        sendButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(100) 
            make.height.equalTo(60)
            make.left.right.equalToSuperview().inset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    private func evaluateAnotherTimeButtonConstraint() {
        view.addSubview(evaluateAnotherTimeButton)
        evaluateAnotherTimeButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(40)
            make.centerX.equalToSuperview()
        }
    }
    
    private func selectRatingLabelConstraint() {
        view.addSubview(selectRatingLabel)
        selectRatingLabel.snp.makeConstraints { make in
            make.bottom.equalTo(sendButton).inset(120)
            make.centerX.equalToSuperview()
        }
    }
    
    private func grayStripeConstraint() {
        view.addSubview(grayStripe)
        grayStripe.snp.makeConstraints { make in
            make.height.equalTo(timeLabel).inset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func evaluateAnotherTimeButtonTaped() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func sendButtonTaped() {
        print ("sendButtonTaped")
    }
}
