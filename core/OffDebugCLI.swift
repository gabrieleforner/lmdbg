import Darwin



func OffDebugCLI() -> Void
{
    while(true)
    {
       fputs("(lmdbg) ", stdout)
        guard let cmdstr = readLine() else { return }
        if let i = keywords.firstIndex(of: cmdstr)
        {
            offDebugFuncs[i]()
        }
        else
        {
            print("Command not recognized")
        }
    }
}
