//
//  Imagepicker.swift
//  weather_api
//
//  Created by User18 on 2020/6/16.
//  Copyright © 2020 ntou. All rights reserved.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI
struct ImagePickerController: UIViewControllerRepresentable {
    @Binding var showSelectPhoto: Bool
    @Binding var selectImage: Image
    
    func makeCoordinator() -> ImagePickerController.Coordinator {
        Coordinator(imagePickerController: self)
    }
    
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate,
    UINavigationControllerDelegate {

        internal init(imagePickerController:
        ImagePickerController) {
         self.imagePickerController = imagePickerController
         }

         let imagePickerController: ImagePickerController
        
        func imagePickerController(_ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info:
        [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
             imagePickerController.selectImage = Image(uiImage:
            uiImage)
             }
             imagePickerController.showSelectPhoto = false
        }


    }
    
 func updateUIViewController(_ uiViewController:
UIImagePickerController, context: Context) {

 }

    


func makeUIViewController(context:
UIViewControllerRepresentableContext<ImagePickerController>) ->
UIImagePickerController {
 let controller = UIImagePickerController()
 controller.sourceType = .photoLibrary
 controller.delegate = context.coordinator
 return controller
 }
    
}

struct Imagepicker: View {
    @State private var selectImage = Image(systemName: "photo")
    @State private var showSelectPhoto = false
    var body: some View {
        
        VStack {
            Button(action: {
                 self.showSelectPhoto = true
            }) {
                selectImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipped()
              }
            .buttonStyle(PlainButtonStyle())
             .sheet(isPresented: $showSelectPhoto) {
              ImagePickerController(showSelectPhoto: self.$showSelectPhoto, selectImage: self.$selectImage)
            }
            WebImage(url: URL(string: "https://cdn.givingcompass.org/wp-content/uploads/2019/12/02081412/Climate-Change-and-the-New-Language-of-Weather-800x450.jpg"))
            
             .onSuccess { image, data, cacheType in
                 
             }
             .resizable()
             .scaledToFit()
             .frame(width: 300, height: 300, alignment: .center)
        }
    }
}


struct Imagepicker_Previews: PreviewProvider {
    static var previews: some View {
        Imagepicker()
    }
}
