//
//  MainView.swift
//  Brandi_Assignment
//
//  Created by AlexHwang on 2022/03/18.
//

import UIKit

import SnapKit

final class MainView: UIView {
    let collectionView: UICollectionView = {
        let collectionView = UICollectionView()
        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(collectionView)
    }
    
    func setupConstraints() {
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
