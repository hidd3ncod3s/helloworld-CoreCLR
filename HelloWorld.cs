using System;

public class Program
{
    public static void Main (string[] args)
    {
		string url = "http://www.google.com";
		 
		Console.WriteLine("Please press ENTER:");
        Console.ReadLine();
		
		Console.WriteLine(url.GetType().AssemblyQualifiedName);
		Console.WriteLine(url.GetType().AssemblyQualifiedName);
		Console.WriteLine(typeof(Program).Assembly.FullName);
		Console.WriteLine(url.GetType().Assembly.FullName);
		Console.WriteLine(typeof(string).Assembly.CodeBase);
		Console.WriteLine(typeof(string).Assembly.Location);
		Console.WriteLine(typeof(string).AssemblyQualifiedName);
		Console.WriteLine(typeof(Console).AssemblyQualifiedName);
    }   
}