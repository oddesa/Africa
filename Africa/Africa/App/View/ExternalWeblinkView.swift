//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Jehnsen Hirena Kane on 01/05/23.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()

                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    
                    // TODO: Add code below, in time this code written, there is still a bug in SwiftUI
//                    Link(destination: URL(string: animal.link)) {
//                        Text(animal.name)
//                    }
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
