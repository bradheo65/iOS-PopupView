import PopupView

struct ContentView: View {
    @State private var isShowPopupView: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isShowPopupView.toggle()
            } label: {
                Text("Show PopupView")
            }
        }
        .popup(isPresented: $isShowPopupView) {
            Text("Hi PopupView")
                .frame(width: 250, height: 100)
                .background(.white)
                .cornerRadius(25)
                .shadow(
                    color: .gray,
                    radius: 10
                )
        } customize: {
            $0
                .type(.floater())
                .position(.top)
                .animation(.spring)
        }
    }
}
