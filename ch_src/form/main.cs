using System;
using System.Windows.Forms;

namespace ch_src
{
    class Program
    {
        static void Main(string[] args)
        {
             var f = new Form();
            f.Text = "Hello World";
            Application.Run(f);
            Console.WriteLine("Hello World!");
        }
    }
}
