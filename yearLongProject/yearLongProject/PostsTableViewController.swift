//
//  PostsTableViewController.swift
//  yearLongProject
//
//  Created by Ethan Archibald on 10/26/23.
//

import UIKit

class PostsTableViewController: UITableViewController {
    
    var arrayOfPosts = [
        PostInfo(title: "Favorite Food?", bodyText: "Most under rated Food is steak well done!", date: Date(), user: "Ste@kGuy", comments: "I would argue with you but you're still chewing"),
        PostInfo(title: "Lamp", bodyText: "Lamp Post", date: Date(), user: "Moth", comments: "Lamp"),
        PostInfo(title: "Favorite Sport?", bodyText: "Volley Ball ALL THE WAY!", date: Date(), user: "NotTenni$", comments: "Indeed a wise choice"),
        PostInfo(title: "Good songs!", bodyText: "I am looking to update my playlist, any Suggestions?", date: Date(), user: "Post Malone", comments: "Anything buy Juice WRLD or Eminem"),
        PostInfo(title: "I got a new Car!", bodyText: "Guess who just got a brand new Pourche 911!", date: Date(), user: "RealCarGuy", comments: "You can do many things with parents money"),
        PostInfo(title: "Looking for a job", bodyText: "I am looking for work somewhere, If you know anybody know were to go?", date: Date(), user: "Average John", comments: "Anyone looking for work should consider the fighters guild, I hear they are always looking for new recruits"),
        PostInfo(title: "Subway is Gross", bodyText: "I keep on going but every time I just don't like it", date: Date(), user: "FoodE", comments: "My brother in Christ you made the sandwich"),
        PostInfo(title: "Hey Batman", bodyText: "Look Batman! I bought Airforce 1s Batman! Look my toes! I crunched the front batman!", date: Date(), user: "TheRealJOker", comments: "NO JOKER! YOU'RE CREASING THEM!"),
        PostInfo(title: "Favorite Restaraunt?", bodyText: "I am curious what everyones favorite restaunt is?", date: Date(), user: "TheCuriousMan", comments: "It always depends on how much mony I am willing to spend"),
        PostInfo(title: "Last Post", bodyText: "Last one best one", date: Date(), user: "Quote", comments: "Never got the point of that one")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        if ViewController.isItGettingDarkOut == true {
    //            mainView.overrideUserInterfaceStyle = .dark
    //        } else {
    //            mainView.overrideUserInterfaceStyle = .light
    //        }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfPosts.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "postIdentifier", for: indexPath) as! PostsTableViewCell
         
         let post = arrayOfPosts[indexPath.row]
         
         cell.titleLabel.text = post.title
         cell.BodyTextLabel.text = post.bodyText
         cell.commentLabel.text = "\"\(post.comments)\""
         let dateFormatter = DateFormatter()
         cell.dateLabel.text = post.date.formatted(date: .abbreviated, time: .omitted)
         cell.usernameLabel.text = post.user
     
     // Configure the cell...
     
     return cell
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
