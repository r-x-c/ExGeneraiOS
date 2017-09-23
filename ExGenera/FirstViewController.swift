//
//  FirstViewController.swift
//  ExGenera
//
//  Created by Richard Chen on 6/12/17.
//  Copyright © 2017 Richard Chen. All rights reserved.
//

import UIKit

var list = ["Buy milk", "Run 5 miles", "Get Peter", "Plant my new plants"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        listTableView.reloadData()
    }


    @IBOutlet weak var listTableView: UITableView!
    
    @IBOutlet weak var newCellInput: UITextField!
    
    @IBAction func createCell(_ sender: Any) {
        if (newCellInput.text != "")
        {
            list.append(newCellInput.text!)
            newCellInput.text = ""
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

