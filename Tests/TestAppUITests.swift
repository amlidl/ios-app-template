import XCTest

final class TestAppUITests: XCTestCase {

    func testWaitAndScreenshot() {
        let app = XCUIApplication()
        app.launch()

        sleep(2)

        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.name = "After 2 Seconds"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
