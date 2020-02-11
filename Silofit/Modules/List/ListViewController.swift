import UIKit
import Kingfisher

final class ListViewController: UIViewController {
    // MARK: Properties
    let viewOutput: ListViewOutput
    private let cellIdentifier = "SpaceCell"

    // MARK: Initalizers
    init(viewOutput: ListViewOutput) {
    	self.viewOutput = viewOutput
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput.viewIsReady()
    }
    
    // MARK: View
    private lazy var tableView: UITableView = {
        UITableView(frame: view.frame)
    }()
    
    private func setupView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SpaceCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
    }
}

// MARK: Presenter To View Protocol
extension ListViewController: ListViewInput {
    func setupInitialState() {
        setupView()
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewOutput.spaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! SpaceCell
        cell.setup(with: viewOutput.spaces[indexPath.row])
        return cell
    }
}

extension ListViewController: UITableViewDelegate {
    
}
