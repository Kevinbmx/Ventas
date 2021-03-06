using System;

namespace Entities
{
	public class EN_Tbl_venta
	{
		#region Fields

		private int venta_id;
		private string fecha;
		private int total;
		private int cliente_id;

		#endregion

		#region Constructors

		/// <summary>
		/// Initializes a new instance of the EN_Tbl_venta class.
		/// </summary>
		public EN_Tbl_venta()
		{
		}

		/// <summary>
		/// Initializes a new instance of the EN_Tbl_venta class.
		/// </summary>
		public EN_Tbl_venta(string fecha, int total, int cliente_id)
		{
			this.fecha = fecha;
			this.total = total;
			this.cliente_id = cliente_id;
		}

		/// <summary>
		/// Initializes a new instance of the EN_Tbl_venta class.
		/// </summary>
		public EN_Tbl_venta(int venta_id, string fecha, int total, int cliente_id)
		{
			this.venta_id = venta_id;
			this.fecha = fecha;
			this.total = total;
			this.cliente_id = cliente_id;
		}

		#endregion

		#region Properties
		/// <summary>
		/// Gets or sets the Venta_id value.
		/// </summary>
		public virtual int Venta_id
		{
			get { return venta_id; }
			set { venta_id = value; }
		}

		/// <summary>
		/// Gets or sets the Fecha value.
		/// </summary>
		public virtual string Fecha
		{
			get { return fecha; }
			set { fecha = value; }
		}

		/// <summary>
		/// Gets or sets the Total value.
		/// </summary>
		public virtual int Total
		{
			get { return total; }
			set { total = value; }
		}

		/// <summary>
		/// Gets or sets the Cliente_id value.
		/// </summary>
		public virtual int Cliente_id
		{
			get { return cliente_id; }
			set { cliente_id = value; }
		}

		#endregion
	}
}
