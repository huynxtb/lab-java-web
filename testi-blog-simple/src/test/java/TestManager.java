import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class TestManager {

    private WebDriver driver;

    @BeforeTest
    public void FirstTest(){
        System.setProperty("webdriver.gecko.driver","D:\\Software\\fireFox-geckodriver-v0.27.0-win64\\geckodriver.exe");
        driver = new FirefoxDriver();
        driver.get("http://localhost:8080/home");
        driver.manage().window().maximize();
    }

    @Test
    public void Test(){
        WebElement btnClick = driver.findElement(By.id("photo-page"));
        btnClick.click();
    }

    @AfterTest
    public void afterTest(){
        driver.close();
    }
}
