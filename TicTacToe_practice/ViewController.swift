//
//  ViewController.swift
//  TicTacToe_practice
//
//  Created by 遠藤幸一 on 2023/08/16.
//

import UIKit

class ViewController: UIViewController {
    //ゼロ（Nought）とバツ（Cross）をそれぞれターンとして宣言する。列挙型
    enum Turn {
        case Nought
        case Cross
    }
    
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    var firstTurn = Turn.Cross
    var currentTurn = Turn.Cross
    
    var NOUGHT = "O"
    var CROSS = "X"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func boardTapAction(_ sender: UIButton)
    {
        addToBoard(sender)
        
    }
    
    func addToBoard(_ sender: UIButton)
    {
        //グリッド内のタップされた特定のボタンが、nilに等しいかどうかの判断
        if(sender.title(for: .normal) == nil)
        {
            if(currentTurn == Turn.Nought)
            {
                sender.setTitle(NOUGHT, for: .normal)
                currentTurn = Turn.Cross
                turnLabel.text = CROSS
            }
            else if(currentTurn == Turn.Cross)
            {
                sender.setTitle(CROSS, for: .normal)
                currentTurn = Turn.Nought
                turnLabel.text = NOUGHT
            }
        }
    }
}

