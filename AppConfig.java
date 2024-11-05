package org.example.sql;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import javax.sql.DataSource;

@Configuration
public class AppConfig {
    @Bean
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource =

                new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://s146.cyber-folks.pl:3306/rainerbz_maturadb");
        dataSource.setUsername("rainerbz_maturadbusr");
        dataSource.setPassword("1qazXSW@34");
        return dataSource;
    }
    @Bean(name="BrowsersDAOBean")
    public BrowsersDAOImpl AppDAO(){
        return new BrowsersDAOImpl(getDataSource());
    }
}
