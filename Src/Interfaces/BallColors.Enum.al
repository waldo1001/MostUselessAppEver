enum 50100 "BallColors" implements IBallColorIdentifier
{
    Extensible = true;
    value(0; Tennis)
    {
        Implementation = IBallColorIdentifier = Tennis;
    }

    value(1; Basketball)
    {
        Implementation = IBallColorIdentifier = Basketball;
    }

    value(2; Soccer)
    {
        Implementation = IBallColorIdentifier = Soccer;
    }
}