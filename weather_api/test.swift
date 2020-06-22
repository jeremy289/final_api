//
//  test.swift
//  weather_api
//
//  Created by User20 on 2020/6/16.
//  Copyright © 2020 ntou. All rights reserved.
//
/*
import SwiftUI
import UIKit

struct test : View {

  let array = ["Taipei","Taipei City","Keelung","Taoyuan","Tainan","Taichung","Kaohisung"]
  @State private var searchText = ""

  var body: some View {


      NavigationView{
        List{
            TextField("Type your search",text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            ForEach(array.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self){searchText in
                Text(searchText)
            }
        }
        .navigationBarTitle(Text("Search"))
    }


  }
}

struct test_Previews : PreviewProvider {
  static var previews: some View {
    test()
  }
}
 struct SearchBar: UIViewRepresentable {

     @Binding var text: String

     class Coordinator: NSObject, UISearchBarDelegate {

         @Binding var text: String

         init(text: Binding<String>) {
             _text = text
         }

         func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
             text = searchText
         }
     }
     func makeCoordinator() -> SearchBar.Coordinator {
         return Coordinator(text: $text)
     }

     func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
         let searchBar = UISearchBar(frame: .zero)
         searchBar.delegate = context.coordinator
         searchBar.autocapitalizationType = .none
         return searchBar
     }

     func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
         uiView.text = text
     }
 }

*/
