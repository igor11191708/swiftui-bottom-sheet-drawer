//
//  BottomSheetPositionKey.swift
//  
//
//  Created by Igor Shelopaev on 22.07.2022.
//

import SwiftUI

/// Key for emerging drawer sheet position
@available(iOS 15.0, macOS 12.0, watchOS 10.0, *)
public struct BottomSheetPositionKey: PreferenceKey {
    
    static public var defaultValue: BottomSheetPosition = .down(0)

    static public func reduce(value: inout BottomSheetPosition, nextValue: () -> BottomSheetPosition) {
        value = nextValue()
    }
}
