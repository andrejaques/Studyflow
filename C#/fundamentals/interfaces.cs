/* Uma interface define um contrato que pode ser implementado por classes e structs */

/* Uma interface pode conter métodos, propriedades, eventos e indexadores */

/* Uma interface não fornece implementações dos membros que define - apenas susas "assinaturas"
As interfaces podem emrpegar herança múltipla */

// quem herda a interface ou quem completa a interface tem que ter obrigatoriamente os mesmos métodos implementados

// ex:

interface IControl {
    void Paint();
}

interface IListBox 
{
    void SetText(string text);
}

interface IcomboBox: IControl, IListBox {}

interface IDataBound 
{
    void Bind(Binder b);
}

public class EditBox: IcomboBox, IDataBound 
{
    public void Paint() { }
    public void SetText(string text) { }
    public void Bind(Binder b) { }
}