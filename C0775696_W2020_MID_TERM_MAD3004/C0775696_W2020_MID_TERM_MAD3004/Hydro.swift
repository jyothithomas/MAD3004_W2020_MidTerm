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
    
    init(agencyName: String, unitConsumed: Double, billId: Int, billType: BillType) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId: billId, billType: billType)
    }
    var totalHydroBill: Double
    {
        return self.calculateTotalHydro()
    }
    
    private func calculateTotalHydro() -> Double
    {
        var t = 0.0
        t = self.unitConsumed * 0.50
        return t
    }
    
     override func display() {
        print("************* Hydro Bill ******************************")
        print("agencyName:                      \(agencyName)")
        print("unitConsumed:                    \(unitConsumed)")
        print("totalHydroBill:                  \(totalHydroBill)")
        print("*********************************************************")
    }
    
    
}
