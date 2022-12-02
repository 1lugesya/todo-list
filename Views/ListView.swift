//
//  ListView.swift
//  toDoList
//
//  Created by Ayşegül Sarı on 27.11.2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    
    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
            } else {
                
                List {
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete (perform: listViewModel.deleteItem)
                    .onMove (perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
            }
            
        }
        
        .navigationTitle("To Do List 📝")
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: { AddView()
        })
        )}
    

}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}





