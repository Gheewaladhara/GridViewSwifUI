//
//  ContentView.swift
//  GridView
//
//  Created by GHEEWALA DHARA on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    
    private var data: [Int] = Array(1...20)
    private var colors: [Color] = [.red, .green, .blue, .yellow]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: adaptiveColumns, spacing: 20){
                    ForEach(data, id: \.self){ number in
                        ZStack{
                            Rectangle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(colors[number%4])
                                .cornerRadius(30)
                            Text("\(number)")
                                .foregroundColor(.white)
                                .font(.system(size: 80, weight: .medium, design: .rounded ))
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Grid sample")
        }
    }
}

#Preview {
    ContentView()
}
