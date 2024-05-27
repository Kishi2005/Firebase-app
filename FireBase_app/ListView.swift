//
//  ListView.swift
//  FireBase_app
//
//  Created by Lorenzo Fravolini on 20/12/23.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    
    var body: some View {
        NavigationView {
            List(dataManager.dogs, id: \.id) {
                dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                showPopup.toggle()
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup) {
                NewDogView()
            }
        }
    }
}

#Preview {
    ListView()
        .environmentObject(DataManager())
}
