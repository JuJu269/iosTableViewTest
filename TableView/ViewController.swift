//
//  ViewController.swift
//  TableView
//
//  Created by Ju Ju on 5/6/18.
//  Copyright © 2018 Ju Ju. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var moviewList = ["Avenger:Infinity War","Bravan","Downsizing","Black Sail","ABC","EDS"]
    var moviePhotos = ["a1.jpg","a1.jpg","a1.jpg","a1.jpg","a1.jpg","a1.jpg"]
    
    var movies = [("Avenger:Infinity War","a1.jpg"),("Get Out","getout.jpg"),("Dunkira","dunkira.jpg")]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return movies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor=UIColor.white
       // cell.accessoryType = .detailButton
        cell.textLabel?.text=movies[indexPath.row].0//"Rows \(indexPath.row+1)"
        cell.imageView?.image =  UIImage(named: movies[indexPath.row].1)
        cell.imageView?.contentMode = .scaleAspectFill
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark ? .none : .checkmark
        
        let selectedMovie = movies[indexPath.row]
        performSegue(withIdentifier: "detailSegue", sender: selectedMovie)
    }
    // must do when data transfer (after didselected) get only for data , can't view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // only data can be transfer
        
        let selectedmovie = sender as! (String,String)
        
        let destVC = segue.destination as! DetailViewController //type cast
        destVC.selectedMovie = selectedmovie
        
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

