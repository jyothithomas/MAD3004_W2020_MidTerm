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
    var mobileNumber: Int
    var internetGBUsed: Double
    var minuteUsed: Double
    
   init(billId: String, billDate: Date, billType: BillType, mobileManufacturerName: String, planName: String, mobileNumber: Int, internetGBUsed: Double, minuteUsed: Double)
   {
        
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
      override func calculateTotalBill()
    {
        self.totalBilltoPay = internetGBUsed * 0.05 + minuteUsed
    }
    
     override func display() {
        super.display()
        calculateTotalBill()
        print("************* Mobile Bill ******************************")
        print("mobileManufacturerName:      \(mobileManufacturerName)")
        print("planName:                    \(planName)")
        print("mobileNumber:                \(mobileNumber)")
        print("totalMobileBill:             \(totalBilltoPay.currency())")
        print("*********************************************************")
    }
}


