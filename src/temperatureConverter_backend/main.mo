import Float "mo:base/Float";
import Text "mo:base/Text";

actor {
  public query func greet(name : Text) : async Text {
    return "Hello, My name is " # name # "!";
  };

  // Function to convert Kelvin to Fahrenheit
    public func kelvinToFahrenheit(kelvin : Float) : async Text {
        let fahrenheit = (kelvin - 273.15) * 9 / 5 + 32;
        return "The farenheit value " # Float.toText(fahrenheit) # " °F";
    };

    // Function to convert Kelvin to Celsius
    public func kelvinToCelsius(kelvin : Float) : async Text {
        let celsius = kelvin - 273.15;
        return "The celsius value " # Float.toText(celsius) # " °C";
    };


    // Function to convert to the two
    public func convertTemperatureKelvin(kelvin: Float): async Text {
        let fahrenheit = (kelvin - 273.15) * 9 / 5 + 32;
        let celsius = kelvin - 273.15;

        return "Temperature in Fahrenheit: " # Float.toText(fahrenheit) # " °F" # "\nTemperature in Celsius: " # Float.toText(celsius) # " °C";
    };
};
