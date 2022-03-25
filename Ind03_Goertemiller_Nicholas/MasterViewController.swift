//
//  MasterViewController.swift
//  Ind03_Goertemiller_Nicholas
//
//  Created by Nicholas Goertemiller on 3/23/22.
//

import UIKit

class MasterViewController: UIViewController {
  @IBOutlet var tableView: UITableView!
  
  var states: [State] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    states = State.states()
  }
  
    
    // get viewTable
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    if let indexPath = tableView.indexPathForSelectedRow {
      tableView.deselectRow(at: indexPath, animated: true)
    }
  }
    
    
    // segue to DetailViewController
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard
      segue.identifier == "ShowDetailSegue",
      let indexPath = tableView.indexPathForSelectedRow,
      let detailViewController = segue.destination as? DetailViewController
      else {
        return
    }
    
    let test: State
    test = states[indexPath.row]
    detailViewController.test = test
  }
}
  


extension MasterViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView,
                 numberOfRowsInSection section: Int) -> Int {
    return states.count
  }
    
    
    // reuse cells
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    let state: State
    state = states[indexPath.row]
    cell.textLabel?.text = state.name
    cell.detailTextLabel?.text = state.nickName.rawValue
    return cell
  }
}
