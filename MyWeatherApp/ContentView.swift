//
//  ContentView.swift
//  MyWeatherApp
//
//  Created by Macbook Air on 14/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = WeatherViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                Text(viewModel.timezone)
                    .font(.system(size: 32))
                Text(viewModel.temp)
                    .font(.system(size: 44))
                Text(viewModel.title)
                    .font(.system(size: 24))
                Text(viewModel.description)
                    .font(.system(size: 24))
            }
            .navigationTitle("MyWeatherApp")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
