//
//  ContentView.swift
//  StateUso
//
//  Created by Moises Miranda Vilas Boas on 04/03/22.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
   @State var mudaAnimal = false
    
    var body: some View {
        VStack (alignment: HorizontalAlignment.center)  {
               Text("Qual você prefere?")
            
           mudaAnimal ?
            
        
             Image("dog").resizable().scaledToFit()
            :
            Image("cat").resizable().scaledToFit()
            
            
              Button(action: { print("botao apertado")
                  self.mudaAnimal = !self.mudaAnimal }){Text("Troca")}
                  .frame(width: 100.0, height: 30.0)
                  .foregroundColor(.white)
                  .background(.red)
                  .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                }
            }
        }


struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        Group {
            ContentView()
            ContentView()
        }
    }
}

