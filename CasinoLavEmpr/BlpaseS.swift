//
//  BlpaseS.swift
//  CasinoLavEmpr
//
//  Created by Nicolae Chivriga on 06/02/2025.
//

import SwiftUI


struct BlpaseS: View {
    @Environment(\.dismiss) var dismiss
    @State var changeRu: Bool = false
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image("bope")
                .resizable()
                .frame(width: 42, height: 36)
        }

    }
}
extension View {
    func slofgwokd() -> some View {
        self.modifier(Sdaerdasbgrfa())
    }
}
