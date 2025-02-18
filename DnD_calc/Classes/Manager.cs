using DnD_calc.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace DnD_calc.Classes
{
     public class Manager
    {
        public static Frame MainFrame { get; set; }
    }

    public class Pager 
    { 
        public static PointPage PointPage { get; } = new PointPage();
        public static EnemyPage EnemyPage { get; } = new EnemyPage();
        public static LATERPage LATERPage { get; } = new LATERPage();
        public static PersonaPage PersonaPage { get; } = new PersonaPage();

    }
}
