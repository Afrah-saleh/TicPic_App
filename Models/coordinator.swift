//
//  coordinator.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 14/05/1445 AH.
//


import SwiftUI


//Create a Coordinator class for fetching the captured image from Camera
// coordinator class which is used to get the image data captured from the camera or selected in photo library.
class coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var picker: ImagePickerView
    
    init(picker: ImagePickerView) {
        self.picker = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        self.picker.selectedImage = selectedImage
        self.picker.isPresented.wrappedValue.dismiss()
    }
    
}
