//
//  ContentView.swift
//  StopWatchInterface
//
//  Created by calum couch on 2022-11-15.
//


import SwiftUI



struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            
            
            
            
            Color.black
            
                .ignoresSafeArea()
            
            VStack {
                
                
                
                Spacer()
                
                
                
                Text("00:09.96")
                
                    .font(Font.system(size: 90, weight: .thin))
                
                    .foregroundColor(.white)
                
                
                
                
                
                HStack {
                    
                    CircleButtonView(buttonColor: Color("Dark Gray"), lable: "Reset", labelColor: .white)
                    
                    
                    
                    Spacer()
                    
                    
                    
                    CircleButtonView(buttonColor: Color("Dark Green"), lable: "Start", labelColor: .green)
                    
                }
                
                
                
                List{
                    
                    Group {
                        
                        StopwatchListView(lapNumber: "Lap 5", lapTime: "00:00.98", lapColor: .white)
                        
                        
                        
                        StopwatchListView(lapNumber: "Lap 4", lapTime: "00:04.08", lapColor: .red)
                        
                        
                        
                        StopwatchListView(lapNumber: "Lap 3", lapTime: "00:00.96", lapColor: .green)
                        
                        
                        
                        StopwatchListView(lapNumber: "Lap 2", lapTime: "00:02.76", lapColor: .white)
                        
                        
                        
                        StopwatchListView(lapNumber: "Lap 1", lapTime: "00:01.16", lapColor: Color(.white))
                        
                        
                        
                    }
                    
                    
                    
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    
                    
                }
                
                
                .frame(height: 300)
                
                
                
                .listStyle(.plain)
                
            }
            
            .padding()
            
        }
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TabView(selection: Binding.constant(3)) {
            
            Text("World CLock")
            
                .tabItem{
                    
                    Image(systemName: "globe")
                    
                    Text("World clock")
                    
                }
            
                .tag(1)
            
            
            
            Text("Alarm")
            
                .tabItem{
                    
                    Image(systemName: "alarm.fill")
                    
                    Text("Alarm")
                    
                }
            
                .tag(2)
            
            
            
            ContentView()
            
                .tabItem{
                    
                    Image(systemName: "stopwatch.fill")
                    
                    Text("Stopwatch")
                    
                }
            
                .tag(3)
            
            
            
            Text("Timer")
            
                .tabItem{
                    
                    Image(systemName: "timer")
                    
                    Text("Timer")
                    
                }
            
                .tag(4)
            
        }
        
        
        
        .accentColor(.orange)
        
        
        
        .preferredColorScheme(.dark)
        
    }
    
}




