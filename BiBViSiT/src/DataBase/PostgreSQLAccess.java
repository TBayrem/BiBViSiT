package DataBase;

/**
 * Verbindungsdaten zur PostgreSQL-Datenbank.
 * Die Werte kommen aus Umgebungsvariablen und stehen nicht im Quellcode:
 * BIBVISIT_DB_URL, BIBVISIT_DB_USER, BIBVISIT_DB_PASSWORD, BIBVISIT_DB_SCHEMA.
 */
public class PostgreSQLAccess extends JDBCAccess {

	public PostgreSQLAccess() throws NoConnectionException {
		super();
	}

	@Override
	public void setDBParms() {
		dbDrivername = "org.postgresql.Driver";
		dbURL = env("BIBVISIT_DB_URL", "jdbc:postgresql://localhost:5432/bibvisit");
		dbUser = env("BIBVISIT_DB_USER", "postgres");
		dbPassword = env("BIBVISIT_DB_PASSWORD", "");
		dbSchema = env("BIBVISIT_DB_SCHEMA", "BiBViSiT");
	}

	private static String env(String name, String fallback) {
		String value = System.getenv(name);
		return (value == null || value.isEmpty()) ? fallback : value;
	}
}
