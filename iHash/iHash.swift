//
//  iHash.swift
//  iHash
//
//  Created by Felipe Mendes on 14/03/19.
//  Copyright © 2019 Felipe Mendes. All rights reserved.
//

import Foundation
import CommonCrypto

public final class iHash {
    
    public func md5(_ string: String) -> String? {
        let length = Int(CC_MD5_DIGEST_LENGTH)
        var digest = [UInt8](repeating: 0, count: length)
        
        if let d = string.data(using: String.Encoding.utf8) {
            _ = d.withUnsafeBytes { (body: UnsafePointer<UInt8>) in
                CC_MD5(body, CC_LONG(d.count), &digest)
            }
        }
        
        return (0..<length).reduce("") {
            $0 + String(format: "%02x", digest[$1])
        }
    }
    
}
