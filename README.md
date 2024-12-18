```markdown
# API Testing with Local and Web Services

**API Testing with Local and Web Services** is a project aimed at providing a robust and flexible framework for testing and controlling APIs by utilizing both local and web-based services. This project enables seamless switching between local and web services for better development and debugging workflows.

## Features

- **Dual Service Integration**: Switch effortlessly between local service and web service for API testing and validation.  
- **MVVM Architecture**: Built with a clean and maintainable Model-View-ViewModel (MVVM) architecture.  
- **Customizable Network Layer**: Provides a reusable and adaptable `NetworkService` that handles API requests.  

## Technologies Used

- **Swift**: Core programming language.  
- **MVVM Design Pattern**: For scalable and maintainable code structure.  
- **Custom Network Layer**: Abstracted network handling for both local and web services.

## How It Works

1. **Service Selection**: In the `ContentView`, you can choose between `LocalService` or `WebService` to determine the data source.  
2. **NetworkService Abstraction**: The `NetworkService` is designed to handle API calls. Depending on the selected service, it fetches data from either the local mock data or the live API.  
3. **MVVM Integration**: The `ViewModel` observes the data changes and updates the `ContentView` dynamically.

## Folder Structure

```
```
API-Testing-Project/
├── Services/
│   ├── Networkservice.swift       # Abstract network service layer
│   ├── Webservice.swift           # Handles live API calls
│   ├── Localservice.swift         # Handles local mock data
├── Models/
│   ├── Model.swift            # Data model for the API response
├── ViewModel/
│   ├── ViewModel.swift        # ViewModel handling business logic
├── Views/
│   ├── ContentView.swift          # Main view for the application
```


## Video Demo  



https://github.com/user-attachments/assets/2aaa3e28-d402-4941-a486-1c53a15cc789

https://github.com/user-attachments/assets/dd203f1c-d342-46aa-a4bd-b06f13d12aac

## Future Improvements

- Add caching functionality for faster data retrieval.  
- Implement error handling for better user feedback.  
- Enhance UI with detailed service status and logs.  
