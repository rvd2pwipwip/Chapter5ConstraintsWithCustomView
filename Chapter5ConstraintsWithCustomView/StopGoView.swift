//
//  StopGoView.swift
//  Chapter5ConstraintsWithCustomView
//
//  Created by Herve Desrosiers on 2020-03-03.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class StopGoView: UIView {
    
    private let padding: CGFloat = 50
    private let spacing: CGFloat = 25
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(redView)
        addSubview(greenView)
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: padding),
            redView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: padding),
            redView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor),
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: spacing),
            greenView.leadingAnchor.constraint(equalTo: redView.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
            greenView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -padding)
        ])
    }
    
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
