# Power BI Trino

Power BI Trino is a Microsoft Power BI Custom Connector designed to enable direct querying of Trino data into Power BI for interactive data visualization.

## Authentication

Power BI Trino supports various authentication methods, including Anonymous, Basic (UsernamePassword), and OAuth.

## Customizing the Connector

To customize the connector, follow these steps:

1. **Install Tools**: Install Visual Studio Code and the Power Query SDK extension.
2. **Clone Repository**: Clone this repository and open the "Trino" folder in Visual Studio Code. Note: Opening the main repository folder may cause the Power Query SDK extension to not recognize it as an extension project.
3. **Install Driver**: Install the Simba ODBC Driver.
4. **Modify Configuration**: Adjust settings in the "TrinoDirectQueryTrino.pq" file, including authentication, driver name, and activation.
5. **Build Connector**: Build the .mez file by running the "MakePQX" task from the Command Palette.
6. **Retrieve .mez File**: Once built successfully, locate the "Trino.mez" file in the "Trino\\bin\\AnyCPU\\Debug" folder.
7. **Alternative**: Alternatively, download the pre-built .mez file  your customized version from the debug folder. Place it in your local "Documents\Power BI Desktop\Custom Connectors" folder.

## Using the Connector

To use the connector:

1. **Launch Power BI Desktop**.
2. **Security Settings**: Navigate to File – Options and settings – Options – Security.
3. **Extension Settings**: Under Data Extensions, select "(Not Recommended) Allow any extension to load without validation or warning" option.
4. **Restart Power BI**: Click OK and restart Power BI Desktop to use the custom connector you configured.

## Connector Menu

When using the Power BI Trino Connector:

- **Fill Fields**: Populate the required and optional fields to communicate with your Trino environment.
- **Execute Actions**: Click OK to either scan your objects or execute a specific SQL query if provided.

## Authentication Options

Choose from various authentication mechanisms, including UsernamePassword, Windows, Key, or Anonymous.

## Direct Query Selection

Select the desired objects for direct querying and click "Direct Query" to query data directly.