//
//  Bill.swift
//  C0775696_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 Lambton College. All rights reserved.
//

import Foundation


enum BillType
{
    case Mobile,Internet,Hydro
}
class Bill: IDisplay
{
    var billId: Int
    var billDate: Date?
    var billType: BillType
    var totalBilltoPay: Double
    {
        return 0
    }
    
    init(billId: Int, billDate: Date, billType: BillType) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
    
    
    init(billId: Int, billType: BillType)
    {
        self.billId = billId
        self.billType = billType
    }
    
    
    func display() {
      print("***************BILL**********************")
      print("Bill Id:          :\(self.billId)")
       print("Bill Type:      :\(self.billType)")
      if let d = self.billDate
      {
       print("Bill Date:    : \(d)")
      } else {
          print("-- No Bill Date Found")
      }
    }
    
}



