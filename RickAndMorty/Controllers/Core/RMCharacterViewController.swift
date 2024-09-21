//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by CED on 9/20/24.
//

import UIKit

/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String("Total: \(model.info.count)"))
                print(String("Page Total: \(model.results.count)"))
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
