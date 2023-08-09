//
//  ContentView.swift
//  Lampada Magica
//
//  Created by Patrick Alves on 09/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var lampadaLigada: Bool = false
    @State var lampadaPotencia: Double = 1.0
    
    var body: some View {
        VStack {
            
            Text("Lâmpada Mágica")
                .font(.largeTitle)
                .padding()
            
            Image(systemName: "lightbulb")
                .font(.system(size: 200))
            
            Spacer()
            
            HStack {
                Text("Lâmpada: ")
                
                Toggle(lampadaLigada ? "Desligar": "Ligar", isOn: $lampadaLigada)
            }
            
            HStack {
                Text("Potência:")
                Slider(value:
                        lampadaLigada ?
                       $lampadaPotencia :
                        .constant(0))
                
                Text("\(lampadaLigada ? lampadaPotencia * 100 : 0.0, specifier: "%.0f")%")
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            lampadaLigada ?
                .yellow.opacity(lampadaPotencia) : .white)
    }
}
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }


