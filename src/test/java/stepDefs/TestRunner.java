package stepDefs;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

import org.junit.runner.RunWith;

@RunWith(Cucumber.class)

@CucumberOptions(
		
		plugin = {"html:target/html-cucumber", "json:target/cucumber.json"},
		
		features = "src/test/java/features",
		tags = {"@F_Login"}, 
	      //  tags = {"@U_1234"}, // to run one single Tag
	        
	        //tags = {"@Sanity,@Regression"}, //to run multiple tags using OR
	        //tags = {"@Sanity or @Regression"}, //to run multiple tags using OR
	        
	       // tags = {"@Regression","@Rapid"}, //to run multiple tags using And
	        //tags = {"@Regression and @Rapid"}, //to run multiple tags using And
		  
		   //  tags= {"@Sanity or (@Regression and @Rapid)"},
		  
			//	  tags= {"@Regression and @Ignore"},
	        
	        glue = {"stepDefs"}
	      
        		
		)

public class TestRunner {

}

