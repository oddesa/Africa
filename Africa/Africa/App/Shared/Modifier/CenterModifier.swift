//
//  CenterModifier.swift
//  Africa
//
//  Created by Jehnsen Hirena Kane on 05/05/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
