using System;

namespace ContactsSrvc.Common
{
    public interface IDateTime
    {
        DateTime UtcNow { get; }
    }
}