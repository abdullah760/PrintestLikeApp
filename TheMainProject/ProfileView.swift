//
//  ProfileView.swift
//  TheMainProject
//
//  Created by Abdullah on 10/07/2023.
//

import SwiftUI

struct ProfileView: View {
    let profileLinkNames: [String] = ["Invested Companies", "Profit", "Loss"]
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("")){
                VStack(spacing: 0) {
                    ForEach(profileLinkNames, id: \.self) { profileLinkName in
                        ProfileLink(profileLinkName: profileLinkName)
                        
                    }
                    Spacer()
                }
                .navigationBarTitle("Mohamed sami")
                .navigationBarItems(
                    leading: // Add our leading view
                    Text("Premium Member")
                        .font(.body)
                        .foregroundColor(Color(.systemGray)),
                    trailing:
                        Image("avatar")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle()))
                    

            }
        }
    }
}
    
    struct ProfileLink: View {
        let profileLinkName: String
        var body: some View {
            NavigationLink(destination: Text("")){
                VStack(spacing: 0){
                    HStack { // Embed it all in an HStack
                        Text(profileLinkName)
                            .font(.body)
                        Spacer() // Spread the Text and Image views apart
                        Image(systemName: "chevron.right") // Add symbol
                            .foregroundColor(Color(.systemGray3))
                            .font(.system(size: 20))
                    }
                    .contentShape(Rectangle())
                    .padding(EdgeInsets(top: 17, leading: 21, bottom: 17, trailing: 21))
                    Divider()
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
    }


    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
    
   
