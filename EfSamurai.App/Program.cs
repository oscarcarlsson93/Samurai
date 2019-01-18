using EfSamurai.Data;
using EfSamurai.Domain;
using System;
using System.Collections.Generic;
using System.Linq;

namespace EfSamurai.App
{
    class Program
    {
        static void Main(string[] args)
        {
            AddOneSamurai();
            AddSomeSamurais();
            AddSomeBattles();
            AddOneSamuraiWithRelatedData();
            ClearDatabase();

        }

        private static void ClearDatabase()
        {
            var context = new SamuraiContext();
            context.RemoveRange(context.Samurais);

            context.RemoveRange(context.Battles);
            context.RemoveRange(context.Quotes);
            context.SaveChanges();
        }

        private static void AddOneSamuraiWithRelatedData()
        {
            var context = new SamuraiContext();

            var samurai = new Samurai
            {
                Name = "Toyotomi",
                FamilyName = "Hideyoshi",
                Hair = new Hairstyle { HairstyleName = "Chonmage" },
                SamuraiQuotes = new List<Quote> { new Quote { Message = "One's act, one's profit", Styles = QuoteCategory.Awesome } },
                Secret = new SecretIdentity { SecretName = "Göran Bengtsson" },
                Battles = new List<SamuraiBattle> { new SamuraiBattle { Battle = context.Battles.First() } },


            };
            context.Samurais.Add(samurai);
            context.SaveChanges();

        }

        private static void AddSomeBattles()
        {
            var context = new SamuraiContext();

            var battle1 = new Battle
            {
                BattleName = "First Battle of Tokyo",
                StartDate = DateTime.Today,
                Brutal = true,
                BattleLog = new BattleLog
                {

                    BattleEvents = new List<BattleEvent>
                    {
                        new BattleEvent {  Description = "First attack was a failure. A lot of casualties", Summary ="Need a new tactic"},
                        new BattleEvent { Description = "Going kamikaze"}
                    }
                }

            };

            context.Battles.Add(battle1);
            context.SaveChanges();



        }

        private static void AddSomeSamurais()
        {
            var context = new SamuraiContext();
            context.Samurais.AddRange(
                new Samurai { Name = "Minamoto" },
                new Samurai { Name = "Ishida" },
                new Samurai { Name = "Hattori" },
                new Samurai { Name = "Sakamoto" },
                new Samurai { Name = "Takenaka" }
                );
            context.SaveChanges();
        }

        private static void AddOneSamurai()
        {
            var samurai = new Samurai { Name = "Zelda" };

            var context = new SamuraiContext();
            context.Samurais.Add(samurai);
            context.SaveChanges();
        }
    }
}
