
This is a simple one liner i have added in the Console.WriteLine()
```
diff --git a/src/mscorlib/src/System/Console.cs b/src/mscorlib/src/System/Console.cs
index d371777..49e881e 100644
--- a/src/mscorlib/src/System/Console.cs
+++ b/src/mscorlib/src/System/Console.cs
@@ -1917,6 +1917,7 @@ namespace System {
         [MethodImplAttribute(MethodImplOptions.NoInlining)]
         public static void WriteLine(String value)
         {
+                       value= "Injected: " + value;
             Out.WriteLine(value);
         }

Output:
D:\coreclr-demo>runtime\HelloWorld.exe
Injected: Please press ENTER:

Injected: System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=184bed11102e5b48
Injected: System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=184bed11102e5b48
Injected: HelloWorld, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
Injected: mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=184bed11102e5b48
Injected: file:///D:/coreclr-demo/runtime/mscorlib.dll
Injected: D:\coreclr-demo\runtime\mscorlib.dll
Injected: System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=184bed11102e5b48
Injected: System.Console, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=184bed11102e5b48
```
