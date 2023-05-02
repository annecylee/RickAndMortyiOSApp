//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Tingwei Li on 4/28/23.
//

import UIKit

/// Controller to show and search for characters
class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        let request = RMRequest(
            endPoint: .character,
            pathComponents: ["1"],
            queryParameter: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive"),
            ]
        )
        RMService.shared.execute(request, expecting: RMCharacter.self) {
            result in
        }
    }
}
