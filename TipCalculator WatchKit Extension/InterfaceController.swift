//
//  InterfaceController.swift
//  TipCalculator WatchKit Extension
//
//  Created by Saroj Rout on 3/27/15.
//  Copyright (c) 2015 Saroj Rout. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var amountLabel: WKInterfaceLabel!
    
    @IBOutlet weak var percentLabel10: WKInterfaceLabel!
    
    @IBOutlet weak var percentLabel15: WKInterfaceLabel!
    
    @IBOutlet weak var percentLbl20: WKInterfaceLabel!
    
    var bilAmount: Float = 100
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func plusPressed() {
        bilAmount =  bilAmount+5
     //   var answerFormat: NSString = NSString(format:"%0.2f",bilAmount)
        
     //   amountLabel.text="$\(answerFormat)"
        amountLabel.setText(String(format:"%0.f",bilAmount))
        updateTipsAmt()
        
    }
    
    @IBAction func minusPressed() {
        bilAmount = bilAmount-5
        if(bilAmount < 0){
            bilAmount = 0
        }
        amountLabel.setText(String(format:"%0.f",bilAmount))
       updateTipsAmt()
        
    }
    func updateTipsAmt(){
        var percent10 = bilAmount * 10 / 100
        var percent15 = bilAmount * 15 / 100
        var percent20 = bilAmount * 20 / 100
        percentLabel10.setText("10% = $\(percent10)")
        percentLabel15.setText("15% = $\(percent15)")
        percentLbl20.setText("20% = $\(percent20)")
    }
    
}
