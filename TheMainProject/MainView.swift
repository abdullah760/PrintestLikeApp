//
//  MainView.swift
//  TheMainProject
//
//  Created by Abdullah on 10/07/2023.
//

import SwiftUI

struct MainView: View {
    @State private var selection = 1

    var body: some View {
        VStack{
            
            Spacer()
            
            TabView{
                InvestmentsView()
                    .tabItem {
                        VStack{
                            Image(systemName: "globe")
                            Text("News")
                        }
                        
                    }
                    .tag(0)
                MyInvestement()
                    .tabItem {
                        VStack{
                            Image(systemName: "arrow.forward")
                            Text("MyInvestment")
                                
                        }
                    }
                    .tag(1)
                ProfileView()
                    .tabItem {
                        VStack{
                            Image(systemName: "person")
                            Text("profile")
                                
                        }
                    }
                    .tag(2)
                
            }
        }
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
