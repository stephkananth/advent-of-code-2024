//
//  Reports.swift
//
//
//  Created by Stephanie Ananth on 12/2/24.
//

import Foundation

public struct Reports: Parsable {
    private(set) var reports = [[Int]]()

    public init(from file: String) {
        reports = getRawText(from: file).components(separatedBy: "\n")
            .compactMap { rawReport in
                rawReport.components(separatedBy: " ")
                    .compactMap { rawLevel in
                        Int(rawLevel)
                    }
            }
            .filter { !$0.isEmpty }
    }
}
