//
//  toDoListApp.swift
//  toDoList
//
//  Created by Ayşegül Sarı on 27.11.2022.
//

import SwiftUI

/*
 
MVVM Architecture
Model - data point
View  - UI
ViewModel - manages Models for View
 
*/


@main
struct toDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
            
        }
    }
}
