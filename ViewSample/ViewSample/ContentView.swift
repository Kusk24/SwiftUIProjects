//
//  ContentView.swift
//  ViewSample
//
//  Created by Win Yu Maung on 15/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.largeTitle)
                .foregroundStyle(.red)
            Text("Name")
                .font(.headline)
                .foregroundStyle(.blue)
            
            Image(systemName: "calendar.badge.checkmark")
                .resizable()
                .foregroundStyle(.red)
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.red)

            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button {
                print("Click!!!")
            } label: {
                Text("Click Me")
            }
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 100)
            
            HStack{
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.blue)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 100)
            }.padding(.all)
            
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                    .zIndex(100)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 100)
                    .foregroundStyle(.blue)
                    .zIndex(2)
            }
        }
        
        
        
        .padding()
    }
}

#Preview {
    ContentView()
}
