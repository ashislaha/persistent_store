//
//  ViewController.swift
//  PlistExample
//
//  Created by Ashis Laha on 8/18/18.
//  Copyright © 2018 Ashis Laha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let employee: [Employee] = [
        Employee(name: "Ashis", age: "29", company: "Walmart"),
        Employee(name: "Pushpak", age: "29", company: "Olacabs"),
        Employee(name: "Siddharth", age: "28", company: "Flipkart")
    ]
    
    let datafilePath: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    var employeesPlistPath: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Data file path: \(datafilePath.absoluteString)")
        employeesPlistPath = datafilePath.appendingPathComponent("employees.plist")
        
        UserDefaults.standard.set("my test", forKey: "test") // it is a plist, named "com.ashislaha.PlistExample.plist"
        saveTheEmployees()
        retriveTheEmployees()
    }
    
    private func saveTheEmployees() {
        guard let employeesPlistPath = employeesPlistPath else { return }
        
        let encoder = PropertyListEncoder()
        do {
            let data = try encoder.encode(employee)
            try data.write(to: employeesPlistPath)
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    private func retriveTheEmployees() {
        guard let employeesPlistPath = employeesPlistPath, let data = try? Data(contentsOf: employeesPlistPath) else { return }
        
        let decoder = PropertyListDecoder()
        do {
            let employees = try decoder.decode( [Employee].self, from: data)
            print("\n \(employees)")
        } catch {
            print(error.localizedDescription)
        }
        
    }
}

