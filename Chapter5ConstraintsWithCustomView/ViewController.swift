//
//  ViewController.swift
//  Chapter5ConstraintsWithCustomView
//
//  Created by Herve Desrosiers on 2020-03-03.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.addSubview(stopGoView)
        NSLayoutConstraint.activate([
            stopGoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stopGoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stopGoView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stopGoView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    private let stopGoView: StopGoView = {
        let view = StopGoView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
}

