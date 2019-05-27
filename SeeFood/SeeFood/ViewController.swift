//
//  ViewController.swift
//  SeeFood
//
//  Created by Michel Bou khalil on 5/23/19.
//  Copyright © 2019 Michel Bou khalil. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
        
    }
    
 
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        if let userPickedImage = info[.originalImage] as? UIImage {

            guard let ciimage = CIImage(image: userPickedImage) else {
                fatalError("could not convert")
            }
            
            detect(image: ciimage)
        }

        imagePicker.dismiss(animated: true, completion: nil)

    }
    
   

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func detect(image : CIImage) {
        
        guard let model = try? VNCoreMLModel(for: Inceptionv3().model) else {
            fatalError("fasfa")
        }
        
        let request = VNCoreMLRequest(model: model) { (request,error) in
            guard let results = request.results as? [VNClassificationObservation] else {
                fatalError("dasdad")
            }
            
            if let firstResult = results.first {
                if firstResult.identifier.contains("hotdog") {
                    self.navigationItem.title = "HotDog!"
                } else {
                    self.navigationItem.title = "Not HotDog!"
                }
            }
            
            
        }
        
        let handler = VNImageRequestHandler(ciImage : image)
        
        do{
            try handler.perform([request])
        } catch {
            print(error)
        }
        
        
    }
    
    
    
}

