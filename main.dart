import 'dart:io';

List<String>? getEnvVariables(String env) {
      String? _env = Platform.environment[env.toUpperCase()];
      if (_env == null) {
        print("\$${env.toUpperCase()} not found?");
        return null;
      }
      List<String> __env = _env.split(":");
      return __env;
}

void displayEnvorimentVariable(String env) {
      List<String>? _env = getEnvVariables(env);
      if (_env == null) return;
      int w = stdout.terminalColumns;
      int index = 0;
      String header = "${env.toUpperCase()}: ";
      print("\x1b[33m$header" + List.filled(w - header.length, "-").join());
      for (var p in _env) {
        if (index.isEven)
          stdout.write("\x1b[31m");
        else
          stdout.write("\x1b[33m");
        print("${index.toString().padRight(4)}| $p");
        index++;
      }
      stdout.write("\x1b[0m");
}

void main(List<String> args) {
  if (args.isEmpty) {
    print("No arguments passed!");
    return;
  }
  args[0] = args[0].startsWith("\$") ? args[0].substring(1) : args[0];
  if (args.length == 1) displayEnvorimentVariable(args[0]);
  else {
    List<String>? _env = getEnvVariables(args[0]);
    if (_env == null) return;
    print(_env[int.parse(args[1])]);
  }
}
