//
//  ImageVIewCell.swift
//  Brandi_Assignment
//
//  Created by AlexHwang on 2022/03/18.
//

import UIKit
import SnapKit

final class ImageViewCell: UICollectionViewCell {
    static let identifier = "ImageViewCell"
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.distribution = .fill
        
        return stackView
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.backgroundColor = .clear
        
        return scrollView
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "xmark")
        imageView.layer.cornerRadius = 15
        imageView.contentMode = .scaleAspectFill
        // 음영
        
        return imageView
    }()
    
    let labelView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.distribution = .fill
        
        return stackView
    }()
    
    let displaySiteName: UILabel = {
        let label = UILabel()
        
        label.text = "default"
        
        return label
    }()
    
    let dateTime: UILabel = {
        let label = UILabel()
        
        label.text = "default"
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(stackView)
        scrollView.addSubview(imageView)
        
        [scrollView, labelView].forEach {
            stackView.addArrangedSubview($0)
        }
        
        [displaySiteName, dateTime].forEach {
            labelView.addArrangedSubview($0)
        }
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        imageView.snp.makeConstraints { make in
            make.width.equalTo(scrollView.frameLayoutGuide)
            make.edges.equalTo(scrollView.contentLayoutGuide)
        }
    }
}
