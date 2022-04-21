//
//  ViewController.swift
//  HeaderandFooterView
//
//  Created by Codebele 07 on 20/04/2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    let model = [
        ["model x ","model y","model 3","model sp90"],
        ["the one ", "hello","hey"],
        ["the last one"]
    ]
    var personDetail:Welcome?
    
    @IBOutlet weak var tabelview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelview.register(UINib(nibName: "HeaderandfooterTVCellTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderandfooterTVCellTableViewCell" )
        
        tabelview.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear")
        personDetail = loadJson(filename: "tabeldata")
        personDetail?.person.forEach({ i in
            print(i.name)
            
        })
        
    }
    
    func loadJson(filename: String) -> Welcome? {
        
        let decoder = JSONDecoder()
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let person = try? decoder.decode(Welcome.self, from: data)
        else {
            
            
            return nil
        }
        
        return person
    }
    
    
    
    
    // number of sections
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return personDetail?.person.count
//                
//                }
    //hight for the section
    //    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
    //        return 20.3
    //    }
    //number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personDetail?.person.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderandfooterTVCellTableViewCell", for: indexPath) as! HeaderandfooterTVCellTableViewCell
        //        cell.label.text = personDetail?.person[indexPath.row].name
        //        cell.label.text =  personDetail?.person[indexPath.row].age
        //
        cell.label.text = personDetail?.person[indexPath.row].name
        cell.label1.text = personDetail?.person[indexPath.row].age
        cell.label2.text = personDetail?.person[indexPath.row].employed
        return cell
    }
    // header function
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard section == 0 else {
            return nil
        }
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: self.tabelview.frame.width, height: 200))
        let ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view1.frame.width, height: view1.frame.height))
        ImageView.image = UIImage(named: "Earth")
        view1.addSubview(ImageView)
        view1.backgroundColor = UIColor.red
        
        return view1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 200 : 0
    }
    
    //mark: footer
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard section == 0  else {
            return nil
        }
        let view2  = UIView(frame: CGRect(x: 0, y: 0, width: self.tabelview.frame.size.width, height: 200))
        view2.backgroundColor = UIColor.red
        
        return view2
        
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return section == 0 ? 200 : 0
    }
    
    
    
}

