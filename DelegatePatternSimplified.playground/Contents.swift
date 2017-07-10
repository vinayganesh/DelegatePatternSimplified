protocol WebDeveloperProtocol {
    func makeWebsites()
}

struct Developer: WebDeveloperProtocol {
    func makeWebsites() {
        print("Making websites")
    }
}

struct Client {
    var delegate: WebDeveloperProtocol!
    func AskToMakeWebSites() {
        delegate.makeWebsites()
    }
}

let developer = Developer()
var client = Client()
client.delegate = developer
client.AskToMakeWebSites()