//
//  AllChatView.swift
//  ChatApp
//
//  Created by A Alabdullah on 22/02/2023.
//

import SwiftUI

struct AllChatView: View {
    @EnvironmentObject var homeData: HomeViewModel
    var body: some View {
        
        //side tab view...
        VStack{
            
            
            HStack{
                Spacer()
                
                Button(action: {}, label : {
                    Image(systemName: "plus").font(.title2).foregroundColor(.green)
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal)
            
            HStack{
                Image(systemName: "magnifyingglass").foregroundColor(.gray)
                
                TextField("Search", text: $homeData.search)
                    .textFieldStyle(PlainTextFieldStyle())
                
            }
            .padding(.vertical,8)
            .padding(.horizontal)
            .background(Color.primary.opacity(0.15))
            .cornerRadius(10)
            .padding()
            
            List(selection: $homeData.selectedrecentMsg){
                
                ForEach(homeData.msgs){message in
                    
                    //message view...
                    NavigationLink(destination: DetailView(user: message), label: {RecentCardView(recentMsg: message)
                    })
                    
                }
            }
            .listStyle(SidebarListStyle())
        }
    }
}

struct AllChatView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
