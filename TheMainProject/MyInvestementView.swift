//
//  MyInvestement.swift
//  TheMainProject
//
//  Created by Abdullah on 10/07/2023.
//

import SwiftUI

struct MyInvestement: View {
    var body: some View {
        VStack{
            
        HStack{
                Spacer()
                .frame(width: 325)
                Image("plus-solid")
                    .resizable()
                    .frame(width: 30 , height: 30)
                }
            Spacer()
            }
            
            
        }
        
        
    }


struct MyInvestement_Previews: PreviewProvider {
    static var previews: some View {
        MyInvestement()
    }
}
