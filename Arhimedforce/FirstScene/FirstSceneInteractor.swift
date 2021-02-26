//
//  FirstSceneInteractor.swift
//  Arhimedforce
//
//  Created by User on 30.10.2019.
//  Copyright (c) 2019 User. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol FirstSceneBusinessLogic
{
  func doSomething(request: FirstScene.Something.Request)
}

protocol FirstSceneDataStore
{
  //var name: String { get set }
}

class FirstSceneInteractor: FirstSceneBusinessLogic, FirstSceneDataStore
{
  var presenter: FirstScenePresentationLogic?
  var worker: FirstSceneWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: FirstScene.Something.Request)
  {
    worker = FirstSceneWorker()
    worker?.doSomeWork()
    
    let response = FirstScene.Something.Response()
    presenter?.presentSomething(response: response)
  }
}