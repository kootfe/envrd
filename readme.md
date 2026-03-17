# Dart Environment Variable CLI Tool

A simple Dart CLI tool to read and display system environment variables in a colorful, readable format.

## Features

* List environment variables with alternating colors for readability.
* Display a specific environment variable by index.
* Handles missing environment variables gracefully.
* Works on any platform that supports Dart.

## Installation

1. Make sure you have Dart installed on your system.
2. Clone this repository:

   ```bash
   git clone <repo-url>
   ```
3. Navigate to the project directory:

   ```bash
   cd dart_env_cli_tool
   ```
4. Compile the Dart file to an executable (optional):

   ```bash
   dart compile exe main.dart -o envrd
   ```

## Usage

### List all values of an environment variable

```bash
./envrd PATH
```

This will display all entries of the `PATH` variable in alternating colors.

### Display a specific index of an environment variable

```bash
./envrd PATH 2
```

This will display the third entry (index 2) of the `PATH` variable.

### Handle variables starting with `$`

```bash
./envrd $HOME
```

The tool automatically strips the `$` prefix.

## Example Output

```
PATH: ------------------------------------------------------------
0   | /usr/local/bin
1   | /usr/bin
2   | /bin
```

## Code Highlights

* Uses Dart's null safety.
* Applies mixins and OOP concepts.
* Colorful terminal output using ANSI escape codes.

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests.

## License

MIT License

