package com.se2115.anikit.dbo;

import com.se2115.anikit.models.anime.Anime;
import com.se2115.anikit.models.anime.AnnouncedState;
import com.se2115.anikit.models.anime.FinishedState;
import com.se2115.anikit.models.anime.OngoingState;
import com.se2115.anikit.models.user.User;

import java.sql.*;
import java.util.ArrayList;

public class PostgresDBO implements DBOStrategy{

    private static PostgresDBO manager = null;

    public static PostgresDBO getInstance(){
        if(manager == null)
            manager = new PostgresDBO();
        return manager;
    }

    private Connection connection;
    private String url = "jdbc:postgresql://localhost:5432/postgres";
    private String name = "postgres";
    private String password = "postgres";

    @Override
    public void setConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, name, password);
            System.out.println("Connected");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public User getUserByEmail(String email){
        User user = new User();
        try (PreparedStatement statement = connection.prepareStatement("Select * from users where email = ? limit 1")){
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                user.setId(resultSet.getInt(1));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
            }
        }
        catch (NullPointerException ex){
            return null;
        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }

    public void addUser(User new_user){

        try (PreparedStatement statement = connection.prepareStatement("INSERT INTO users(email, password) values (?, ?)")){
            statement.setString(1, new_user.getEmail());
            statement.setString(2, new_user.getPassword());
            statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Anime getAnimeById(String anime_id){
        Anime anime = new Anime();
        try (PreparedStatement statement = connection.prepareStatement("Select * from anime where id = ? limit 1")){
            statement.setInt(1, Integer.parseInt(anime_id));
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                anime.setId(resultSet.getInt(1));
                anime.setTitle(resultSet.getString("title"));
                anime.setDescription(resultSet.getString("description"));
                String state = resultSet.getString("state");
                switch (state){
                    case "Announced":
                        anime.setState(new AnnouncedState());
                        break;
                    case "Ongoing":
                        anime.setState(new OngoingState());
                        break;
                    case "Finished":
                        anime.setState(new FinishedState());
                        break;
                }
                anime.setCover(resultSet.getString("cover"));
            }
        }
        catch (NullPointerException ex){
            return null;
        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return anime;
    }

    public void addAnime(Anime new_anime){
        try (PreparedStatement statement = connection.prepareStatement("INSERT INTO anime(title, description, state, cover) values (?, ?, ?, ?)")){
            statement.setString(1, new_anime.getTitle());
            statement.setString(2, new_anime.getDescription());
            statement.setString(3, new_anime.getState());
            statement.setString(4, new_anime.getCover());
            statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public ArrayList<Object> getAllAnime(){
        ArrayList<Object> anime_list = new ArrayList<Object>();
        try (PreparedStatement statement = connection.prepareStatement("Select * from anime")){
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                Anime anime = new Anime();
                anime.setId(resultSet.getInt(1));
                anime.setTitle(resultSet.getString("title"));
                anime.setDescription(resultSet.getString("description"));
                String state = resultSet.getString("state");
                switch (state){
                    case "Announced":
                        anime.setState(new AnnouncedState());
                        break;
                    case "Ongoing":
                        anime.setState(new OngoingState());
                        break;
                    case "Finished":
                        anime.setState(new FinishedState());
                        break;
                }
                anime.setCover(resultSet.getString("cover"));
                anime_list.add(anime);
            }
        }
        catch (NullPointerException ex){
            return null;
        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return anime_list;
    }

    public void addSubscriber(Integer anime_id, Integer user_id){
        try (PreparedStatement statement = connection.prepareStatement("INSERT INTO subscribers(anime_id, user_id) values (?, ?)")){
            statement.setInt(1, anime_id);
            statement.setInt(2, user_id);
            statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public ArrayList<Integer> getAnimeIdBySubscriber(String user_id){
        ArrayList<Integer> anime_ids = new ArrayList<Integer>();
        try (PreparedStatement statement = connection.prepareStatement("Select anime_id from subscribers where user_id = ?")){
            statement.setInt(1, Integer.parseInt(user_id));
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                anime_ids.add(resultSet.getInt(1));
            }
        }
        catch (NullPointerException ex){
            return null;
        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return anime_ids;
    }
}
