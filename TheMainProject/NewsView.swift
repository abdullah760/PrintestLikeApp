//
//  NewsView.swift
//  TheMainProject
//
//  Created by Abdullah on 10/07/2023.
//

import SwiftUI

struct NewsView: View {
    let categoryName : String
    var body: some View {
        VStack {
            Text("")
        }
        .navigationBarTitle(categoryName)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(categoryName: "")
    }
}
