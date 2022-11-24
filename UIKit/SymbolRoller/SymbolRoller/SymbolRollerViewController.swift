//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 이제완 on 2022/11/17.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    func reload() {
        var symbol = symbols.randomElement()!
        while symbol == label.text {
            symbol = symbols.randomElement()!
        }
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
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
