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
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(request.url)
        
        RMService.shared.execute(<#T##request: RMRequest##RMRequest#>,
                                 expecting: <#T##(Decodable & Encodable).Protocol#>, completion: <#T##(Result<Decodable & Encodable, Error>) -> Void#>){
            result in 
        }
        
        // Do any additional setup after loading the view.
    }
    
    

}
