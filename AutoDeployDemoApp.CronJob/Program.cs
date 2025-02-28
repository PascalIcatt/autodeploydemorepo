using System;
using System.Threading.Tasks;
class Program
{
    static async Task Main()
    {
        Console.WriteLine($"CronJob executed at {DateTime.UtcNow}");
        await Task.Delay(1000);
    }
}