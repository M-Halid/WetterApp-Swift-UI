//
//  ContentView.swift
//  WetterApp
//
//  Created by Muhammed Halid Kutsal on 17.10.23.
//

import SwiftUI
struct ContentView: View {
    @State private var nightMode = false
    var body: some View {
        ZStack{
            ContainerRelativeShape()
                .fill(nightMode ? Color.black.gradient : Color.blue.gradient)
                .ignoresSafeArea()
            VStack{
                
                Text("Leipzig, DE").foregroundStyle(.white)
                    .font(.largeTitle)
                
                Image(systemName: "cloud.sun.fill")
                    .symbolRenderingMode(.multicolor)
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 180,height: 180)
                Text("27˚").foregroundStyle(.white).font(.system( size:50,weight:.medium)).padding(.bottom,100)
                HStack(spacing:25){
                    VStack(spacing:5 ) {
                        Days(dayOfWeeK: "Samstag", weatherImage: "sun.max.fill", temperature: 29)
                        
                    }
                    VStack(spacing:5 ) {
                        Days(dayOfWeeK: "Samstag", weatherImage: "sun.max.fill", temperature: 29)
                        
                    }
                    VStack(spacing:5 ) {
                        Days(dayOfWeeK: "Samstag", weatherImage: "sun.max.fill", temperature: 29)
                        
                    }  }
                 
                Button("Growing Button"){
                    nightMode.toggle()
                    print(nightMode)
                }.buttonStyle(GrowingButton()).padding()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct Days: View {
    
    var dayOfWeeK:String
    var weatherImage:String
    var temperature:Int
    
    var body: some View {
        Text(dayOfWeeK).foregroundStyle(.white).font(.title2)
        
        Image(systemName: weatherImage)
            .symbolRenderingMode(.multicolor)
            .resizable()
            .aspectRatio(contentMode:.fit)
            .frame(width: 50,height: 50)
        
        Text("  \(temperature)˚").foregroundStyle(.white).font(.title2)
    }
}
