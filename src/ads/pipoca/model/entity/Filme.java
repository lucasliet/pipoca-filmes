package ads.pipoca.model.entity;
import java.util.Date;

public class Filme {
	private int id;
	private String titulo;
	private String descricao;
	private double popularidade;
	private Date dataLancamento;
	private String posterPath;
	private String diretor;
	private Genero genero;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getPopularidade() {
		return popularidade;
	}

	public void setPopularidade(double popularidade) {
		this.popularidade = popularidade;
	}

	public Date getDataLancamento() {
		return dataLancamento;
	}

	public void setDataLancamento(Date dataLancamento) {
		this.dataLancamento = dataLancamento;
	}

	public String getPosterPath() {
		return posterPath;
	}

	public void setPosterPath(String posterPath) {
		this.posterPath = posterPath;
	}

	public String getDiretor() {
		return diretor;
	}

	public void setDiretor(String diretor) {
		this.diretor = diretor;
	}

	public Genero getGenero() {
		return genero;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		Filme filme = (Filme) o;
		return id == filme.id;
	}

	public int compareTo(Filme o) {
		return getId()-o.getId();
	}

	@Override
	public String toString() {
		return "Filme [id=" + id + ", titulo=" + titulo + ", descricao=" + descricao + ", popularidade=" + popularidade
				+ ", dataLancamento=" + dataLancamento + ", posterPath=" + posterPath + ", diretor=" + diretor
				+ ", genero=" + genero + "]";
	}
}
