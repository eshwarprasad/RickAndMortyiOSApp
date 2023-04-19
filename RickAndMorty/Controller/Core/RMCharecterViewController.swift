//
//  RMCharecterViewController.swift
//  RickAndMorty
//
//  Created by Eshwar on 13/04/23.
//

import UIKit

final class RMCharecterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
                
        // Do any additional setup after loading the view.
        RMService.shared.execute(.listCharactersRequests,
                                 expecting: RMGetAllCharactersResponse.self){ result in
            switch result{
                case .success(let model):
                print("Total: "+String(model.info.count))
                print("Page result count: "+String(model.results.count))
                case .failure(let error):
                    print(String(describing: error))
            }
        }
    }
    
    

}
