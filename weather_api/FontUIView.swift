//
//  FontUIView.swift
//  weather_api
//
//  Created by User18 on 2020/6/16.
//  Copyright © 2020 ntou. All rights reserved.
//

import SwiftUI
import SafariServices

struct SafariView:UIViewControllerRepresentable{
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    struct SafariView_Previews: PreviewProvider {
        static var previews: some View {
            SafariView(url: URL(string: "https://medium.com/@apppeterpan")!)
        }
    }
    
    
    typealias UIViewControllerType = SFSafariViewController
    
    let url:URL
    
}



struct FontUIView: View {
    @State private var showWebpage = false
    var body: some View {
        Button("中央氣象局官網") {
            self.showWebpage = true
        }
        .sheet(isPresented: $showWebpage) {
            SafariView(url: URL(string: "https://www.cwb.gov.tw/V8/C/W/OBS_Map.html")!)
        }
       
        
    }
}
