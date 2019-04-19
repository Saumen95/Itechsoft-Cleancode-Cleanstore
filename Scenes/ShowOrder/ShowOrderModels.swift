//
//  ShowOrderModels.swift
//  CleanStore
//
//  Created by Raymond Law on 2/12/19.
//  Copyright (c) 2019 Clean Swift LLC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum ShowOrder
{
  // MARK: Use cases
  
  enum GetOrder
  {
    struct Request
    {
    }
    struct Response
    {
      var order: Order
    }
    struct ViewModel
    {
      struct DisplayedOrder
      {
        var id: String
        var date: String
        var email: String
        var name: String
        var total: String
      }
      var displayedOrder: DisplayedOrder
    }
  }
}