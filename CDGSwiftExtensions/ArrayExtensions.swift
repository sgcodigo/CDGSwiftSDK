//
//  ArrayExtensions.swift
//  CDGSwiftSDK
//
//  Created by Vic-L on 18/10/17.
//  Copyright © 2017 codigo. All rights reserved.
//

import Foundation

extension Array {
    /**
     CDGSwiftSDK
     Converts all the elements of array into the `Stringified` version
     */
    var string: Array<String> {
        return self.map { String(describing: $0) }
    }
    
    /**
     CDGSwiftSDK
     Break array into steps (or chunks) of desired sizes
     */
    func splitIntoChunks(ofSize chunkSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chunkSize).map {
            Array(self[$0..<Swift.min($0 + chunkSize, self.count)])
        }
    }
}
