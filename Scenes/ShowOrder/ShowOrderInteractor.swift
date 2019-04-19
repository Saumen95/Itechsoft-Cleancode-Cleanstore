//
//  ShowOrderInteractor.swift
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

protocol ShowOrderBusinessLogic
{
  func getOrder(request: ShowOrder.GetOrder.Request)
}

protocol ShowOrderDataStore
{
  var order: Order! { get set }
}

class ShowOrderInteractor: ShowOrderBusinessLogic, ShowOrderDataStore
{
  var presenter: ShowOrderPresentationLogic?
  
  var order: Order!
  
  // MARK: - Get order
  
  func getOrder(request: ShowOrder.GetOrder.Request)
  {
    let response = ShowOrder.GetOrder.Response(order: order)
    presenter?.presentOrder(response: response)
  }
}
