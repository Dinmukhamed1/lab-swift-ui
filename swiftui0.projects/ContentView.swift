import SwiftUI

struct ContentView: View {
  
    var person: Person
    
    
    @State var a = ""
@State var b = ""
    @State var sum = 0
    
    var body: some View {
        VStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175.0, height: 175.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                Text(person.name)
                Text(person.surname)
                
            
            Text("sum = \(sum)")
                .padding()
            TextField("Enter a", text: $a)
                .padding(.all)
                .frame(width: 100.0)
            TextField("Enter b", text: $b)
                .padding(.all)
                .frame(width: 100.0)
            
        
            Button("Tap") {
                sum = Int(a)!+Int(b)!
            }
            .foregroundColor(.green)
            .padding(.all)
        }
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(person: Person(name: "Will", surname: "Smith", image: "will smith"))
    }
}
