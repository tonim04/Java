package Sanremo;

public class Artista {
	
	String nome, canzone, immagine, ultimovoto;
	int positivi, negativi;
	
	public Artista() {
		super();
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCanzone() {
		return canzone;
	}

	public void setCanzone(String canzone) {
		this.canzone = canzone;
	}

	public String getImmagine() {
		return immagine;
	}

	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}

	public int getPositivi() {
		return positivi;
	}

	public void setPositivi(int positivi) {
		this.positivi = positivi;
	}

	public int getNegativi() {
		return negativi;
	}

	public void setNegativi(int negativi) {
		this.negativi = negativi;
	}

	public String getUltimovoto() {
		return ultimovoto;
	}

	public void setUltimovoto(String ultimovoto) {
		this.ultimovoto = ultimovoto;
	}

}
