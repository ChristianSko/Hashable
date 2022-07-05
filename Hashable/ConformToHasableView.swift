//
//  ContentView.swift
//  Hashable
//
//  Created by Skorobogatow, Christian on 5/7/22.
//

import SwiftUI



struct MyCustomModel: Hashable {
    let title: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}

struct ConformToHasableView: View {
    
    let data: [MyCustomModel] = [
        MyCustomModel(title:"ONE" ),
        MyCustomModel(title: "TWO"),
        MyCustomModel(title: "THREE"),
        MyCustomModel(title: "FOUR"),
        MyCustomModel(title: "FIVE")
        
        
    ]
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 40){
                ForEach(data, id: \.self) { item in
                    Text(item.hashValue.description)
                        .font(.headline)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConformToHasableView()
    }
}
