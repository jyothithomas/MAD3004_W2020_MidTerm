//
//  Hydro.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

class Hydro: Bill
{
    var agencyName: String
    var unitConsumed: Double
    var ratePerUnit: Double = 12.0 
    init(billId: String, billDate: Date, billType: BillType, agencyName: String, unitConsumed: Double) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
        override func calculateTotalBill()
    {
        self.totalBilltoPay = Double(unitConsumed)*ratePerUnit/10
    }
    
     override func display() {
        super.display()
        calculateTotalBill()
        print("************* Hydro Bill ******************************")
        print("agencyName        :                  \(agencyName)")
        print("unitConsumed      :                  \(unitConsumed)")
        print("totalHydroBill    :                  \(totalBilltoPay.currency())")
        print("*********************************************************")
    }
    
    
}
