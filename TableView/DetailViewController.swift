//
//  DetailViewController.swift
//  TableView
//
//  Created by Ju Ju on 5/6/18.
//  Copyright © 2018 Ju Ju. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var selectedMovie:(String,String) = ("","") // or use ! ?
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named : selectedMovie.1)
        movieName.text = selectedMovie.0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
