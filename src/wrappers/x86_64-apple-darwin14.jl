# Autogenerated wrapper script for TVM_jll for x86_64-apple-darwin14
export libtvm, libnnvm_compiler, libtvm_topi, libtvm_runtime

using Zlib_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `libtvm`
const libtvm_splitpath = ["lib", "libtvm.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtvm_path = ""

# libtvm-specific global declaration
# This will be filled out by __init__()
libtvm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtvm = "@rpath/libtvm.dylib"


# Relative path to `libnnvm_compiler`
const libnnvm_compiler_splitpath = ["lib", "libnnvm_compiler.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libnnvm_compiler_path = ""

# libnnvm_compiler-specific global declaration
# This will be filled out by __init__()
libnnvm_compiler_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libnnvm_compiler = "@rpath/libnnvm_compiler.dylib"


# Relative path to `libtvm_topi`
const libtvm_topi_splitpath = ["lib", "libtvm_topi.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtvm_topi_path = ""

# libtvm_topi-specific global declaration
# This will be filled out by __init__()
libtvm_topi_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtvm_topi = "@rpath/libtvm_topi.dylib"


# Relative path to `libtvm_runtime`
const libtvm_runtime_splitpath = ["lib", "libtvm_runtime.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtvm_runtime_path = ""

# libtvm_runtime-specific global declaration
# This will be filled out by __init__()
libtvm_runtime_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtvm_runtime = "@rpath/libtvm_runtime.dylib"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Zlib_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Zlib_jll.LIBPATH_list,))

    global libtvm_path = abspath(joinpath(artifact"TVM", libtvm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtvm_handle = dlopen(libtvm_path)
    push!(LIBPATH_list, dirname(libtvm_path))

    global libnnvm_compiler_path = abspath(joinpath(artifact"TVM", libnnvm_compiler_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libnnvm_compiler_handle = dlopen(libnnvm_compiler_path)
    push!(LIBPATH_list, dirname(libnnvm_compiler_path))

    global libtvm_topi_path = abspath(joinpath(artifact"TVM", libtvm_topi_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtvm_topi_handle = dlopen(libtvm_topi_path)
    push!(LIBPATH_list, dirname(libtvm_topi_path))

    global libtvm_runtime_path = abspath(joinpath(artifact"TVM", libtvm_runtime_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtvm_runtime_handle = dlopen(libtvm_runtime_path)
    push!(LIBPATH_list, dirname(libtvm_runtime_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

