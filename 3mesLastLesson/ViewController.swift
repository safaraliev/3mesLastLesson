//
//  ViewController.swift
//  3mesLastLesson
//
//  Created by Нуридин Сафаралиев on 12/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var zametkiTableView: UITableView!
    
 
    var zametki2 = ["213123"] 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func button(_ sender: UIButton!) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Хотите добавить новую заметку?", message: "Введите текст ниже", preferredStyle: .alert)
        

        alert.addTextField { textfiled in
            textField = textfiled
        }
        
        let actionYes = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
            self.zametki2.append(textField.text ?? ".")
            self.zametkiTableView.reloadData()
        }
        
        let actionNO = UIAlertAction(title: "NO", style: .default) { UIAlertAction in
        }
        
        alert.addAction(actionNO)
        alert.addAction(actionYes)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    
    
    

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                zametki2.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "zametka_cell", for: indexPath) as! TableViewCell
            cell.cellText.text = zametki2[indexPath.row]
            return cell
        }
        
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
        
    }
