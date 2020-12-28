//Aplicando factory com create, utilizando strategy e inversão de controle

using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;

namespace Workbench.Comparer
{
    public class GenericComparerFactory<TEntity> : IEqualityComparer<TEntity> // Classe com implementação da interface.
    {
        private Func<TEntity, object> Predicate { get; set; }

        private GenericComparerFactory() { }

        public static GenericComparerFactory<TEntity> Create(Func<TEntity, object> predicate) // Criação do strategy - factory com create passando uma arrow function
        {
            return new GenericComparerFactory<TEntity>() { Predicate = predicate };
        }

        public bool Equals([AllowNull] TEntity x, [AllowNull] TEntity y)
        {
            return Predicate(x).Equals(Predicate(y));
        }

        public int GetHashCode([DisallowNull] TEntity obj)
        {
            return Predicate(obj).GetHashCode();
        }
    }
}
