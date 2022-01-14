//
//  ReviewViewController.swift
//  AZS
//
//  Created by Никита Гуляев on 14.01.2022.
//

import UIKit
import SnapKit
import Cosmos

class ReviewViewController: UIViewController {
    
    
    private let starsView: CosmosView = {
        let view = CosmosView()
        view.settings.starSize = 60
        view.settings.starMargin = 8
        view.settings.filledImage = UIImage(named: "Star1")?.withRenderingMode(.alwaysOriginal)
        view.settings.emptyImage = UIImage(named: "Star2")?.withRenderingMode(.alwaysOriginal)
        view.rating = 1
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
    
    private let addressAZSLabel: UILabel = {
        let label = UILabel()
        label.text = "АЗС №14. Республика Татарстан, г.Казань, Ямашева проспект, 105а/1"
        label.numberOfLines = 0
        label.textColor = .systemGray
        return label
    }()
    
    private let ratingLabel: UILabel = {
        let label = UILabel()
        label.text = "Оцените качество обслуживания на АЗС №14"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
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
        button.backgroundColor = UIColor(red: 109/255, green: 175/255, blue: 125/255, alpha: 1)
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
        addressAZSConstraint()
        ratingLabelConstrain()
        starsViewConstraint()
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
            make.bottom.equalToSuperview().inset(80)
            make.height.equalTo(60)
            make.left.right.equalToSuperview().inset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    private func evaluateAnotherTimeButtonConstraint() {
        view.addSubview(evaluateAnotherTimeButton)
        evaluateAnotherTimeButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    private func selectRatingLabelConstraint() {
        view.addSubview(selectRatingLabel)
        selectRatingLabel.snp.makeConstraints { make in
            make.bottom.equalTo(sendButton).inset(200)
            make.centerX.equalToSuperview()
        }
    }
    
    private func addressAZSConstraint() {
        view.addSubview(addressAZSLabel)
        addressAZSLabel.snp.makeConstraints { make in
            make.top.equalTo(timeLabel).inset(40)
            make.left.right.equalToSuperview().inset(15)
            make.centerX.equalToSuperview()
        }
    }
    
    private func ratingLabelConstrain() {
        view.addSubview(ratingLabel)
        ratingLabel.snp.makeConstraints { make in
            make.top.equalTo(addressAZSLabel).inset(180)
            make.left.right.equalToSuperview().inset(50)
            make.centerX.equalToSuperview()
        }
    }
    
    private func starsViewConstraint() {
        view.addSubview(starsView)
        starsView.snp.makeConstraints { make in
            make.bottom.equalTo(selectRatingLabel).inset(50)
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func evaluateAnotherTimeButtonTaped() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func sendButtonTaped() {
        print("Selected \(starsView.rating) stars")
    }
}
