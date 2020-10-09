//
//  WebListTableTableViewController.swift
//  NavigationControllerWithTableView
//
//  Created by miyazawaryohei on 2020/10/09.
//

import UIKit

class WebListTableTableViewController: UITableViewController {

    let webList = [
        (name:"アップル", url:"https://www.apple.com/"),
        (name:"国立天文台", url:"https://www.nao.ac.jp/"),
        (name:"東京都美術館", url:"http://www.tobikan.jp"),
        (name:"amazon", url:"https://www.amazon.co.jp")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return webList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let webData = webList[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = webData.name
        cell.detailTextLabel?.text = webData.url

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //セグエがshowWebPageのときの処理
        if segue.identifier == "showWebPage" {
            //タップした行番号を取り出す
            if let indexPath = self.tableView.indexPathForSelectedRow {
                print("aaa")
                //行のデータを取り出す
                let webData = webList[(indexPath as NSIndexPath).row]
                //移動先のビューコントローラのdataプロパティに値を設定する
                (segue.destination as! ViewController).data = webData
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
