//
//  ContentView.swift
//  ShareSheet
//
//  Created by devannogiovanni on 16/10/21.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
        VStack{
            /*TextField("Username", text: $username)
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(5.0)
                            .padding(.bottom, 20)
            */
            Button(action: actionSheet) {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36)
            }
        }
      
    }
    
    func actionSheet() {
        guard let data = URL(string: "https://www.zoho.com") else { return }
        let av = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
}
    

    /*var body: some View {
        Button(action: actionSheet) {
            Image(systemName: "square.and.arrow.up")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 36, height: 36)
        }
       
    }
    func actionSheet() {
           guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
           let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
           UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
       }
}*/
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
