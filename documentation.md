![](https://img.shields.io/badge/Microverse-blueviolet) ![](https://img.shields.io/badge/RoR-red) ![](https://img.shields.io/badge/React-yellow)

# Car Booking API Documentation

   ```
    API URL: https://murmuring-tor-45890.herokuapp.com/api/v1/
   ```
   
## ![](https://img.shields.io/badge/-POST-orange) SingUp

   ```
    API URL: https://murmuring-tor-45890.herokuapp.com/api/v1/users/signup
   ```
   
   
![](https://img.shields.io/badge/JSON-blue?style=for-the-badge)
  ```
  {
      "user":
      {
          "name": "kandy",
          "email": "kandy@gmail.com"
          "password": "admin1234",
          "confirm_password": "admin1234"
      }
  }
  ```
  
## ![](https://img.shields.io/badge/-POST-orange) Login

   ```
    API URL: https://murmuring-tor-45890.herokuapp.com/api/v1/users/login
   ```

![](https://img.shields.io/badge/JSON-blue?style=for-the-badge)
  ```
  {
      "user":
      {
          "email": "kandy@gmail.com"
          "password": "admin1234",
      }
  }
  ```

## ![](https://img.shields.io/badge/-GET-green) List all cars

   ```
    API URL: https://murmuring-tor-45890.herokuapp.com/api/v1/cars
   ```
   
![](https://img.shields.io/badge/JSON-blue?style=for-the-badge)
  ```
  {
      "cars":
      {
          "id": 1
          "name": "Lamborgini",
          "model": "Chiron",
          "reserved": true,
          "per_day_amount": 200,
          "image": "https://www.kmpdrivetrain.com/wp-content/uploads/2021/06/Bugatti-Veyron_Overview.png"
      },
      {
          "id": 2
          "name": "Range Rover",
          "model": "Sport",
          "reserved": true,
          "per_day_amount": 200,
          "image": "https://www.kmpdrivetrain.com/wp-content/uploads/2021/06/Bugatti-Veyron_Overview.png"
      },
  }
  ```
  
## ![](https://img.shields.io/badge/-GET-yellow) Get unique car

   ```
    API URL: https://murmuring-tor-45890.herokuapp.com/api/v1/cars/{id}
   ```
   
![](https://img.shields.io/badge/JSON-blue?style=for-the-badge)
  ```
  {
      "cars":
      {
          "id": 6
          "name": "Lamborgini",
          "model": "Chiron",
          "reserved": true,
          "per_day_amount": 200,
          "image": "https://www.kmpdrivetrain.com/wp-content/uploads/2021/06/Bugatti-Veyron_Overview.png"
      },
  }
  ```
