import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name = ""
    var surname = ""
    var image = ""
}

struct PersonRoW: View {
    
    var person: Person
    
    var body: some View {
            HStack {
                Image(person.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75.0, height: 75.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                VStack(alignment: .leading) {
                    Text(person.name)
                    Text(person.surname)
                    
                }
            }
           
        }
        
    }
    


struct ListView: View {
    
    var persons = [Person(name: "Will", surname: "Smith", image: "will smith"), Person(name: "Snoop", surname: "Dogg", image: "snoop dogg"), Person(name: "Dr", surname: "Dre", image: "dr.dre" )]
    
    var body: some View {
        NavigationView {
            List(persons){ item in
                PersonRoW(person: item)
                NavigationLink(destination: ContentView(person: item)) {  }
                PersonRoW(person: item)
            }
        }
        .navigationTitle("List")
        
        }
    
        
struct ListView_Previews: PreviewProvider {
            static var previews: some View{
                ListView()
            }
        }
    }


