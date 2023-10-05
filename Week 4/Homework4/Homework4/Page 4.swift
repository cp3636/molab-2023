//
//  Page 4.swift
//  Homework4
//
//  Created by Clarissa Pace on 10/4/23.
//
import SwiftUI

struct Page4: View {
    var body: some View {
        NavigationView {
            List {
                
                    
                NavigationLink {
                    Page3()
                } label: {
                    Text("Clarissa's Page")

                        .foregroundColor(.teal)
                        .frame(maxWidth: .infinity)
                    
                        .font(.title)
                        .foregroundColor(.blue)
                    
                }
                NavigationLink {
                    Songs()
                } label: {
                  
                    Image(uiImage: UIImage(named: "Music")!)
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("Songs")
                        .foregroundColor(.blue)
                }
                NavigationLink {
                    Dog()
                } label: {
                    Image(uiImage: UIImage(named: "Dog")!)
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text("Dog")
                        .foregroundColor(.pink)
                 
                }
            }
        }
    }
}


struct Page4_Previews: PreviewProvider {
  static var previews: some View {
    Page4()
  }
}
