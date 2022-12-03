//
//  Strings + Localization.swift
//  vk-client
//
//  Created by Dima Gorbachev on 03.12.2022.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
