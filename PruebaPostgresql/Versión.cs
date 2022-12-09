using PruebaMySQL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace PruebaPostgresql
{
    public partial class Versión : Form
    {
        string consulta;
        public Versión()
        {
            InitializeComponent();
        }

        private void Versión_Load(object sender, EventArgs e)
        {
            MostrarDatos();
        }
        private void MostrarDatos()
        {
            dataGridView1.DataSource = ConexionSql.ejecutaConsultaSelect("SELECT *FROM Version ORDER BY idVersion");
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            string Nombre = textBox1.Text;
            string Fechasalida = textBox3.Text;
            string Fechactualizacion = textBox4.Text;
            string idVideojuego = textBox5.Text;
            consulta = "INSERT INTO Version(Nombre, Numero, Fechasalida, Fechactualizacion, idDesarrollador) values('" + Nombre + "', '" + Fechasalida + "', '" + Fechactualizacion + "', '" + idVideojuego + "')";
            ConexionSql.ejecutaConsulta(consulta);
            MostrarDatos();


            textBox1.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox5.Clear();
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            string Nombre = textBox1.Text;           
            string Fechasalida = textBox3.Text;
            string Fechactualizacion = textBox4.Text;
            string idVideojuego = textBox5.Text;
            int idVersion = (int)dataGridView1.SelectedRows[0].Cells[0].Value;
            consulta = "UPDATE Version SET Nombre = '" + Nombre + "'Nombre = '" + Nombre + "',Fechasalida = '" + Fechasalida + "',Fechactualizacion = '" + Fechactualizacion + "',idVideojuego = '" + idVideojuego + "' WHERE idVersion = " + idVersion.ToString();
            ConexionSql.ejecutaConsulta(consulta);
            MostrarDatos();


            textBox1.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox5.Clear();
        }

        private void btnBorrar_Click(object sender, EventArgs e)
        {
            int idVersion = (int)dataGridView1.SelectedRows[0].Cells[0].Value;
            //consulta = "DELETE FROM HOTEL WHERE idHotel = " + idHotel.ToString();
            consulta = "UPDATE Version SET Estatus = 0 WHERE idVersion =  " + idVersion.ToString(); ;
            ConexionSql.ejecutaConsulta(consulta);
            MostrarDatos();
        }

        private void btnSiguiente_Click(object sender, EventArgs e)
        {

        }
    }
}
