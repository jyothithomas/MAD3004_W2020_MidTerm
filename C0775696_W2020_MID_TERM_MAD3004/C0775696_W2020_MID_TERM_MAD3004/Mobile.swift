//
//  Mobile.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation

class Mobile: Bill
{
    
    var mobileManufacturerName: String
    var planName: String
    var mobileNumber: String
    var internetGBUsed: Double
    var minuteUsed: Double
    
    init(billId: Int, billType: BillType,mobileManufacturerName: String,planName: String, mobileNumber: String, internetGBUsed: Double,minuteUsed: Double ){
        
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        super.init(billId: billId, billType: billType)
    }
    
    var totalMobileBill: Double
    {
        return self.calculateTotal()
    }
    
    private func calculateTotal() -> Double
    {
        var t = 0.0
        t = (self.internetGBUsed * self.minuteUsed)/100
        return t
    }
    
     override func display() {
        print("************* Mobile Bill ******************************")
        print("mobileManufacturerName:      \(mobileManufacturerName)")
        print("planName:                    \(planName)")
        print("mobileNumber:                \(mobileNumber)")
        print("totalMobileBill:             \(totalMobileBill)")
        print("*********************************************************")
    }
}


