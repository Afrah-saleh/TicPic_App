//
//  ImagePickerView.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//

import UIKit
import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
// UIViewControllerRepresentable --> this is helps  to use UIKit in SwiftUI) protocol becuse camera i swiftui is not supportted !.

    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
    var sourceType: UIImagePickerController.SourceType // is where we are defining whether the image is taken from the photo library or camera
        
    //func to create images
    //it is going to return UIImagePickerController
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = self.sourceType // is where we are defining whether the image is taken from the photo library or camerar
        imagePicker.delegate = context.coordinator// confirming the delegate
        return imagePicker
    }
    
   
//is used to configure the view and responds to any changes.
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }
    
    // Connecting the Coordinator class with this struct
        func makeCoordinator() -> coordinator {
            return coordinator(picker: self)
        }
}

