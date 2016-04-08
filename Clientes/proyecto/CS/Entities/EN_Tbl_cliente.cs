using System;

namespace Entities
{
	public class EN_Tbl_cliente
	{
		#region Fields

		private int cliente_id;
		private string nombre;
		private int nit;

		#endregion

		#region Constructors

		/// <summary>
		/// Initializes a new instance of the EN_Tbl_cliente class.
		/// </summary>
		public EN_Tbl_cliente()
		{
		}

		/// <summary>
		/// Initializes a new instance of the EN_Tbl_cliente class.
		/// </summary>
		public EN_Tbl_cliente(string nombre, int nit)
		{
			this.nombre = nombre;
			this.nit = nit;
		}

		/// <summary>
		/// Initializes a new instance of the EN_Tbl_cliente class.
		/// </summary>
		public EN_Tbl_cliente(int cliente_id, string nombre, int nit)
		{
			this.cliente_id = cliente_id;
			this.nombre = nombre;
			this.nit = nit;
		}

		#endregion

		#region Properties
		/// <summary>
		/// Gets or sets the Cliente_id value.
		/// </summary>
		public virtual int Cliente_id
		{
			get { return cliente_id; }
			set { cliente_id = value; }
		}

		/// <summary>
		/// Gets or sets the Nombre value.
		/// </summary>
		public virtual string Nombre
		{
			get { return nombre; }
			set { nombre = value; }
		}

		/// <summary>
		/// Gets or sets the Nit value.
		/// </summary>
		public virtual int Nit
		{
			get { return nit; }
			set { nit = value; }
		}

		#endregion
	}
}
