//
//  weatherList.swift
//  Hw5
//
//  Created by User20 on 2020/6/10.
//  Copyright © 2020 stryyhhhhhh. All rights reserved.
//

import SwiftUI

struct weatherList: View {
    @ObservedObject var WeatherListViewModel = weatherListViewModel()
    @State private var searchText = ""
      var body: some View {
        VStack {
            NavigationView {
                VStack {
                    //search(text: $searchText)
                    List(WeatherListViewModel.lists, rowContent: { (Details) in
                        NavigationLink(destination: weatherDetail(Details:Details)) {
                             weatherRow(Details: Details)
                        }
                    })
                      .onAppear {
                          self.WeatherListViewModel.fetchWeathers()
                      }
                    //.navigationBarTitle(Text("Search"))
                }.navigationBarTitle(Text(NSLocalizedString("地區", comment: "")))
            }
        }
    }
}

struct weatherList_Previews: PreviewProvider {
    static var previews: some View {
        weatherList()
    }
}
/*
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
