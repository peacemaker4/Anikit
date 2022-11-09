package com.se2115.anikit.dbo;

import com.se2115.anikit.models.anime.*;
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
        AnimeBuilder animeBuilder = new AnimeBuilder();
        try (PreparedStatement statement = connection.prepareStatement("Select * from anime where id = ? limit 1")){
            statement.setInt(1, Integer.parseInt(anime_id));
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                animeBuilder.setId(resultSet.getInt(1));
                animeBuilder.setTitle(resultSet.getString("title"));
                animeBuilder.setDescription(resultSet.getString("description"));
                String state = resultSet.getString("state");
                switch (state){
                    case "Announced":
                        animeBuilder.setState(new AnnouncedState());
                        break;
                    case "Ongoing":
                        animeBuilder.setState(new OngoingState());
                        break;
                    case "Finished":
                        animeBuilder.setState(new FinishedState());
                        break;
                }
                animeBuilder.setCover(resultSet.getString("cover"));
                animeBuilder.setUserId(resultSet.getInt("user_id"));
            }
        }
        catch (NullPointerException ex){
            return null;
        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return animeBuilder.getAnime();
    }

    public void addAnime(Anime new_anime){
        try (PreparedStatement statement = connection.prepareStatement("INSERT INTO anime(title, description, state, cover, user_id) values (?, ?, ?, ?, ?)")){
            statement.setString(1, new_anime.getTitle());
            statement.setString(2, new_anime.getDescription());
            statement.setString(3, new_anime.getState());
            statement.setString(4, new_anime.getCover());
            statement.setInt(5, new_anime.getUser_id());
            statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void updateAnime(Anime upd_anime){
        try (PreparedStatement statement = connection.prepareStatement("UPDATE anime SET title = ?, description = ?, state = ?, cover = ? WHERE id = ?")){
            statement.setString(1, upd_anime.getTitle());
            statement.setString(2, upd_anime.getDescription());
            statement.setString(3, upd_anime.getState());
            statement.setString(4, upd_anime.getCover());
            statement.setInt(5, upd_anime.getId());
            statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void deleteAnime(int id){
        try (PreparedStatement statement = connection.prepareStatement("DELETE FROM anime WHERE id = ?")){
            statement.setInt(1, id);
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
                AnimeBuilder animeBuilder = new AnimeBuilder();
                animeBuilder.setId(resultSet.getInt(1));
                animeBuilder.setTitle(resultSet.getString("title"));
                animeBuilder.setDescription(resultSet.getString("description"));
                String state = resultSet.getString("state");
                switch (state){
                    case "Announced":
                        animeBuilder.setState(new AnnouncedState());
                        break;
                    case "Ongoing":
                        animeBuilder.setState(new OngoingState());
                        break;
                    case "Finished":
                        animeBuilder.setState(new FinishedState());
                        break;
                }
                animeBuilder.setCover(resultSet.getString("cover"));
                animeBuilder.setUserId(resultSet.getInt("user_id"));
                anime_list.add(animeBuilder.getAnime());
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

    public void removeSubscriber(Integer anime_id, Integer user_id){
        try (PreparedStatement statement = connection.prepareStatement("DELETE FROM subscribers WHERE anime_id = ? AND user_id = ?")){
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
