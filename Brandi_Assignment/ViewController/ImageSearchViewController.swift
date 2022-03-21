//
//  ViewController.swift
//  Brandi_Assignment
//
//  Created by AlexHwang on 2022/03/18.
//

import UIKit

import RxCocoa
import RxSwift

final class ImageSearchViewController: UIViewController {
    
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func bindCollectionView(_ collectionView: UICollectionView, _ indexPath: Int) {
        viewModel.testReputation
            .bind(to: collectionView.rx
                    .items(cellIdentifier: ImageViewCell.identifier)) { index, item, cell in
                
            }
            .disposed(by: disposeBag)
    }
    
}

