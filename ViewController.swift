//
//  ViewController.swift
//  api Image
//
//  Created by Nishanththarun on 02/04/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var image2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Apicall()
    }

    func Apicall(){
        let url = URL(string: "https://wallpapers.com/images/hd/minions-food-4k-cartoon-6t9jkcgtaxpolggl.jpg")
       var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let session = URLSession(configuration: .default)
        session.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async{
                self.image2.image = UIImage(data: data!)
            }
           
        }.resume()
        
    }

}

