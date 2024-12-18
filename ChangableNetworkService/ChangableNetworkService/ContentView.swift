//
//  ContentView.swift
//  ChangableNetworkService
//
//  Created by Alperen KARACA on 18.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userListViewModel : UserListViewModel
    
    init() {
        self.userListViewModel = UserListViewModel(service: Localservice())
    }
    
    var body: some View {
        List(userListViewModel.userList,id: \.id) { user in
            VStack {
                Text(user.name)
                    .font(.title2)
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity , alignment: .leading)
                Text(user.username)
                    .foregroundStyle(.yellow)
                    .frame(maxWidth: .infinity , alignment: .leading)
                Text(user.email)
                    .foregroundStyle(.red)
                    .frame(maxWidth: .infinity , alignment: .leading)
                Text(user.website)
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity , alignment: .leading)
            }
        }.task {
            await userListViewModel.downloadUsers()
        }
    }
}

#Preview {
    ContentView()
}
