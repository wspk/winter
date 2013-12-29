// file: client.dart
import 'dart:html';
import 'dart:convert';
import 'dart:async';

import '../common.dart'; // common libs
import 'util/utils.dart';
import 'stage.dart';

void main() {
  var g = new Game()..connect('192.168.1.4',23193);
  querySelector("#area").requestFullscreen(); // TODO: figure out why this doesn't work
}

class Game {
  // The main game object, establishes a connection with the server and mediates between the stage and the gui
  bool connected = false; // Is the game connected to the server
  bool loggedin = false; // Is the client logged in?
  WebSocket ws; // the websocket connection with the server
  
  int interval = 10; // the loop interval in milliseconds
  
  Character char; // the currently logged in account
  Viewport view; // The main game viewport
  Stage stage; // The game stage, handles most of the game logic
  
  void begin() { // We have successfully logged in, begin the game
    if (!loggedin) return;
    view = new Viewport(querySelector("#area")); // setup the game viewport
    stage = new Stage(char,view,this.send);
    new Timer(new Duration(milliseconds:interval),loop); // start the main game loop
  }
  
  void loop() { // the main game loop
    if (!loggedin) return;
    stage.update(interval); // update the stage
    stage.draw();
    new Timer(new Duration(milliseconds:interval),loop); // start the loop again
  }
  
  
  void start(e) { // We are connected, start the game (should not be called directly)
    if (!connected) return; // game must be connected to the server to start
    print("Connected. Logging in");
    send({"cmd":"login","user":"fred"}); // ask the server to log in
  }
  void stop(e) { // The connection is closed, stop the game
    if (connected) return; // stop should not be called directly, use disconnect instead
    print("Connection Closed");
  }
  
  void send(data) { // send data to the server
    ws.send(JSON.encode(data));
  }
  void receive(e) { // data received from the server
    var data = JSON.decode(e.data);
    if (data["cmd"] == "login") {
      if (data["success"]) { // we successfully logged in
        char = new Character.fromPack(data["char"]);
        print("Successfully logged in as ${char.name}");
        loggedin = true;
        begin(); // begin the game
      } else // treat all errors like invalid usernames for now
        print("Invalid username");
    } else if (data["cmd"] == "update") {
      if (stage != null) // TODO: better checking for logged in
        stage.receive(data); // forward things to the stage
    }
  }
  
  void connect(ip, port) {
    if (connected) disconnect(); // reconnect with the new ip/port
    print("Connecting to server");
    ws = new WebSocket('ws://$ip:$port');
    ws.onOpen.listen(start, onError:(e) { // if no server is present it doesn't throw an error for some reason
      print("Failed to connect to server");
    });
    ws.onClose.listen(stop);
    ws.onMessage.listen(receive);
    connected = true;
  }
  void disconnect() {
    ws.close();
    connected = false;
  }
}