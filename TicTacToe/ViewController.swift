//
//  ViewController.swift
//  TicTacToe
//
//  Created by Linah abdulaziz on 01/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var winnerLabel: UILabel!
    
    var player = 1
    var isActive = true
    var initgame = [0,0,0,0,0,0,0,0,0]
    var win = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        winnerLabel.text = " "
       
        }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if initgame [sender.tag-1] == 0 && isActive{
            initgame [sender.tag-1] = player
                if player == 1{
                    sender.backgroundColor = .red
                    player = 2
                }
                else{
                    sender.backgroundColor = .blue
                    player = 1
                }
            }
        winner()
    }
    
    func winner(){
        
        for i in win{
            if initgame[i[0]] != 0 && initgame[i[0]] == initgame[i[1]] && initgame[i[1]] == initgame[i[2]]{
                isActive = false
                
                if initgame[i[0]] == 1{
                    winnerLabel.text = "Red is won "
                }
                else{
                    winnerLabel.text = "Blue is won "
                }
            }
        }
        
        var count = 0
        
        for i in 0...initgame.count-1{
            if initgame[i] == 0{
                count += 1
            }
        }
            
            if count == 0{
                winnerLabel.text = "Draw"
            }
        
    }
 
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        player = 1
        isActive = true
        initgame = [0,0,0,0,0,0,0,0,0]
       winnerLabel.text = " "
        
        for i in 1...9{
            let button = view.viewWithTag(i) as! UIButton
            
            button.backgroundColor = .lightGray
        }
    }
    
    }
    
   

    
    



