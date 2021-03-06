//
//  TestModels.swift
//  Synchronizable
//
//  Created by Romain Pouclet on 2016-09-04.
//  Copyright © 2016 Perfectly-Cooked. All rights reserved.
//

import Foundation
@testable import Synchronizable

struct GithubRepository: Synchronizable {
    let identifier: String
    let head: String

    func comparison(against persisted: Repository) -> Diff {
        guard persisted.head == head else { return .Update(self) }

        return .None
    }
}

struct Repository: Persistable {
    let identifier: String
    let head: String

}
