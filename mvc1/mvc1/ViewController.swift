//
//  ViewController.swift
//  mvc1
//
//  Created by Ravnish Singh on 04/12/21.
//

import UIKit

class ViewController: UIViewController {

    let person = Person(firstName: "Davy", lastName: "jones", gender: "Male", age: 50, weight: 70.25, height: 200.2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let myView = ExampleView(frame: CGRect(x:0, y:0, width:300, height:300))
        myView.center=view.center
        myView.configure(with: "\(person.firstName) \(person.lastName)")
        view.addSubview(myView)
    }
    
    struct Person {
        let firstName: String
        let lastName: String
        let gender: String
        let age: Int
        let weight: Double
        let height: Double
    
    }

    struct Location{
        let city: String
    }
}
