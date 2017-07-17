//
//  ViewController.swift
//  image_picker
//
//  Created by ZHENGYANGQIAO on 7/17/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate
{
//    let memeTextAttributes[String:Any] = [
//        NSStrokeWidthAttributeName: Float(-4),
//        NSStrokeColorAttributeName: UIColor.black,
//        NSForegroundColorAttributeName: UIColor.white,
//        NSFontAttributeName: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!
//    ]
    
    @IBOutlet weak var imagePickerView: UIImageView!
    

    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: true, completion: nil)
        
    }
    @IBAction func pickAnImageFromCamera(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
////        cameraButton.enabled = UIImagePickerController.isSourceTypeAvailable(.Camera)
//        
////        configureTextFields(topTextField)
////        configureTextFields(bottomTextField)
////        
////        subscribeToKeyboardNotifications()
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imagePickerView.image = image
            dismiss(animated: true, completion: nil)
        }
    }
    

}

