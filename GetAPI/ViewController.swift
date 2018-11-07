//
//  ViewController.swift
//  GetAPI
//
//  Created by Son on 10/24/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let urlAPI = URL(string: "http://api.themoviedb.org/3/movie/popular?api_key=e7631ffcb8e766993e5ec0c1f4245f93&page=&fbclid=IwAR1YcjE9cQ8wsWa-WYUchL_O0MJv_KvRZmTNYnXI8QTudQ43jxfAhYS_ueE")!
//        let data = try? Data(contentsOf: urlAPI)
//        print(data ?? "00")
        let urlString = URL(string: "http://jsonplaceholder.typicode.com/users/1")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let respone = response {
                    print(respone)
                }
                if error != nil {
                    print(error)
                } else {
                    if let usableData = data {
                        print(usableData) //JSONSerialization
                        let json = try? JSONSerialization.jsonObject(with: data!, options: [])
                        print(json)
                    }
                }
            }
            task.resume()
        }
}
}

