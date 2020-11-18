enum 50100 "WLD BallColors" implements "WLD IBallColorIdentifier"
{
    Extensible = true;
    value(0; Tennis)
    {
        Implementation = "WLD IBallColorIdentifier" = "WLD Tennis";
    }

    value(1; Basketball)
    {
        Implementation = "WLD IBallColorIdentifier" = "WLD Basketball";
    }

    value(2; Soccer)
    {
        Implementation = "WLD IBallColorIdentifier" = "WLD Soccer";
    }
}