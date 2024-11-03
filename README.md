# project_base

A base Flutter project implementing a clean architecture approach.

## Folder Structure

This project adheres to a layered architecture to enhance maintainability and scalability. The following outlines the purpose of each directory:

### `application` Layer

This layer houses the application's business logic and orchestrates the flow of data between the presentation and domain layers.

- `models`: Defines data models specific to the application's use cases and services. These models encapsulate the data structures required for complex operations.
- `services`: Contains classes responsible for implementing business logic and handling interactions between use cases and repositories. Services encapsulate complex operations and provide a clear separation of concerns.
- `use_cases`: Defines individual use cases of the application. Each use case represents a specific action or operation that can be performed within the application. This modular approach promotes code reusability and testability.

### `domain` Layer

This layer represents the core business rules and logic of the application, independent of any specific framework or technology.

- `entities`: Defines the core data structures used throughout the application.
    - `ui_entities`:  Data structures optimized for presentation in the UI, potentially including formatting or display-specific attributes.
    - `data_entities`: Data structures used for mapping data retrieved from various data sources (e.g., databases, APIs).

### `presentation` Layer

This layer is responsible for the user interface and user interaction.

- `cubit`: Contains Cubit classes for state management. Cubits manage the state of the UI and provide a streamlined way to update the UI based on user interactions or data changes.
- `widgets`: Contains reusable UI components used throughout the application. This promotes consistency and reduces code duplication.

### `infrastructure` Layer

This layer provides the implementation details for accessing data and external services.

- `dtos`:  Defines Data Transfer Objects (DTOs) used for mapping data between the `data_sources` and `domain` layers. DTOs encapsulate the data format specific to each data source.
- `data_sources`: Contains classes responsible for interacting with different data sources.
    - `local`:  Provides an abstraction layer for interacting with local databases or storage.
    - `remote`: Provides an abstraction layer for interacting with remote APIs or web services.
- `impl_repositories`: Contains concrete implementations of the repository interfaces defined in the `domain` layer. These implementations handle the actual data access logic.


## Other Modules

- `utils`:  Contains utility classes and functions used across the application.
    - `theme`: Defines the application's color palette, typography, and styling guidelines.
- `ui_design`: Contains custom UI widgets that are specific to the application's design language.
- `l10n`:  Stores localization resources for supporting multiple languages.
- `generated`: Contains auto-generated files, such as code generated from localization resources or image assets.