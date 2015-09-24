//
//  ViewController.swift
//  multiples
//
//  Created by Me on 9/23/15.
//  Copyright © 2015 Me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    // Properties
    var numPlus = 0
    var numMultiple = 0
    var sum = 0


    // Outlets
    @IBOutlet weak var multLogo: UIImageView!
    @IBOutlet weak var multToAddTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!

    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addBtnLbl: UILabel!

    @IBOutlet weak var additionOpsLbl: UILabel!


    // Actions
    @IBAction func onClickPlayBtn(sender: UIButton!) {
        if multToAddTxt.text != nil && multToAddTxt.text != "" {

        screenTwo()

        }
    }


    @IBAction func onClickAddBtn(sender: UIButton!) {
        addBtnLbl.hidden = true
        additionOpsLbl.hidden = false

        numMultiple = Int(multToAddTxt.text!)!

        if sum <= 50 {
            additionOps()
        } else {
            restartGame()
        }
    }


    // Functions
    func screenOne() {
        multLogo.hidden = false
        multToAddTxt.hidden = false
        playBtn.hidden = false

        addBtn.hidden = true
        addBtnLbl.hidden = true

        additionOpsLbl.hidden = true
    }


    func screenTwo() {
        multLogo.hidden = true
        multToAddTxt.hidden = true
        playBtn.hidden = true

        addBtn.hidden = false
        addBtnLbl.hidden = false

        additionOpsLbl.hidden = true
    }


    func additionOps() {
        sum = numPlus + numMultiple
        additionOpsLbl.text = "\(numPlus) + \(numMultiple) = \(sum)"
        numPlus = sum
    }


    func restartGame() {
        numPlus = 0
        numMultiple = 0
        sum = 0
        multToAddTxt.text = ""

        screenOne()
    }


}