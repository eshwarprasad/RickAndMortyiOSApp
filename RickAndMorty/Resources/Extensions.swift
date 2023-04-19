//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Eshwar on 19/04/23.
//

import UIKit

extension UIView{
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
