import Foundation

let keywords : [String] = [
    "help",
    "info",
    "exit"
]

let kw_descs: [String: String] = [
    keywords[0] : "Prints this list",
    keywords[1] : "Return some base info about the debugger installation",
    keywords[2] : "Exit from current debugger session"
]

let offDebugFuncs: [() -> Void] = [
    dbg_help,
    dbg_info,
    dbg_exit,
]

func dbg_help() -> Void
{
    for (keyword, description) in kw_descs {
        print("\(keyword) - \(description)")
    }
}

func dbg_info() -> Void
{
    print("lmdbg version 1.0-dev")
}

func dbg_exit() -> Void
{
    exit(0);
}
