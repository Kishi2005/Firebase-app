//
//  NewDogView.swift
//  FireBase_app
//
//  Created by Lorenzo Fravolini on 20/12/23.
//

import SwiftUI

struct NewDogView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""
    var body: some View {
        VStack {
            TextField("Dog", text: $newDog)
            
            Button {
                dataManager.addDog(dogBreed: newDog)
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
}

#Preview {
    NewDogView()
}
