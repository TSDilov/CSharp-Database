﻿using Microsoft.EntityFrameworkCore;
using SoftUni.Data;
using SoftUni.Models;
using System;
using System.Globalization;
using System.Linq;
using System.Text;

namespace SoftUni
{
    public class StartUp
    {
        public static void Main(string[] args)
        {
            var dbContex = new SoftUniContext();
            //Call static method from Operators class for operation
            Console.WriteLine(Operators.GetEmployeesByFirstNameStartingWithSa(dbContex));
        }
    }
}
