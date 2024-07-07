//
//  DetailViewController.swift
//  UIKit-Project1
//
//  Created by Abdulla Ahmad on 12/30/23.
//

import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var totalOfImages: Int?
    var selectedImagePosetion: Int?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture \(selectedImagePosetion ?? 0) in \(totalOfImages ?? 0)"
        navigationItem.largeTitleDisplayMode = .never
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTapped() {
        
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else{
            print ("no image found")
            return
        }
        let vc = UIActivityViewController(activityItems: [image, selectedImage ?? "test"], applicationActivities: [])
        
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        
        present(vc, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
