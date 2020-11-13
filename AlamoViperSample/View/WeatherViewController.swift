//
//  ViewController.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 10/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import UIKit
import PKHUD

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var button:UIButton!
    // 1
    var presenter : PostListPresenterProtocol?
    var model : PostModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter?.viewDidLoad()
    }
    
    @IBAction func navigateButtonClicked(button: UIButton) {
        
    }
}
extension WeatherViewController: PostListViewProtocol {
    func showGets(with gets: PostModel) {
        model = gets
    }

    func showError() {
        HUD.flash(.label("Internet not connected"), delay: 2.0)
    }
    
    func showLoading() {
        HUD.show(.progress)
    }
    
    func hideLoading() {
        HUD.hide()
    }
}

 
