# wasmtime - A fast and secure runtime for WebAssembly

# wasmtime home directory
set -gx WASMTIME_HOME "$HOME/.wasmtime"

# add wasmtime binary to path environment variable
string match -r ".wasmtime" "$PATH" > /dev/null; or set -gx PATH "$WASMTIME_HOME/bin" $PATH
