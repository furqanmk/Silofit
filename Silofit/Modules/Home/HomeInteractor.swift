import Firebase
import CodableFirebase

final class HomeInteractor {
    // MARK: Properties
    weak var interactorOutput: HomeInteractorOutput!
}

// MARK: Presenter To Interactor Interface
extension HomeInteractor: HomeInteractorInput {
    func fetchSpaces() {
        let reference = Database.database().reference()
        reference.child("spaces").observeSingleEvent(of: .value) { [weak self] snapshot in
            guard let value = snapshot.value else { return }
            do {
                let spaces = try FirebaseDecoder().decode([String: Space].self, from: value)
                self?.interactorOutput.didFetchSpaces(spaces)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
