//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kevin Muniz on 12/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                VStack(spacing: 10){
                    
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium, design: .rounded))
                        .foregroundStyle(.white)
                        .padding(.bottom)
                    Spacer()
                    HStack(spacing: 25){
                        temperature(dayOfWeek: "Tue", systemImage: "cloud.sun.fill", temperature: 74)
                        temperature(dayOfWeek: "Wed", systemImage: "sun.max.fill", temperature: 88)
                        temperature(dayOfWeek: "Thu", systemImage: "wind.snow", temperature: 55)
                        temperature(dayOfWeek: "Fri", systemImage: "sunset.fill", temperature: 60)
                        temperature(dayOfWeek: "Sat", systemImage: "snow", temperature: 25)
                        
                    }
                    Spacer(minLength: 200)
                }
            }
        }

    }
}

#Preview {
    ContentView()
}

struct temperature: View {
    let dayOfWeek: String
    let systemImage: String
    let temperature: Int
    var body: some View {
        VStack{
            Text("\(dayOfWeek)")
                .foregroundStyle(.white)
                .font(.system(size: 25, design: .rounded))
            Image(systemName: systemImage)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 45, height: 45)
            Text("\(temperature)°")
                .foregroundStyle(.white)
                .font(.system(size: 25, design: .rounded))
        }
    }
}
