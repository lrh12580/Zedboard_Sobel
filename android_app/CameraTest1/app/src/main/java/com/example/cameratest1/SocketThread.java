package com.example.cameratest1;

import android.os.Message;
import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.net.Socket;
import java.util.Arrays;

public class SocketThread extends Thread {
    private String ip = "";
    private int port = 12580;
    private MainActivity activity;

    private InputStream in = null;
    private OutputStream out = null;

    private String send_file_name = "";
    private String receive_file_name = "";

    private String hardwarePath = "";
    private String softwarePath = "";

    private int platform;

    private static Socket socket;

    private long process_time;

    public SocketThread(String ip, int port, MainActivity activity, String send_file_name, String hardwarePath, String softwarePath, int platform) {
        this.ip = ip;
        this.port = port;
        this.activity = activity;
        this.send_file_name = send_file_name;
        this.hardwarePath = hardwarePath;
        this.softwarePath = softwarePath;
        this.platform = platform;
    }

    @Override
    public void run() {
        super.run();
        try {
            Log.d("MainActivity", ip);
            socket = new Socket(ip, port);

            out = socket.getOutputStream();
            FileInputStream fis = new FileInputStream(send_file_name);

            byte[] buf = new byte[1024];
            int len = 0;
            int i = 0;

            if (platform == MessageArg.HARDWARE) {
                receive_file_name = hardwarePath;
                buf[0] = MessageArg.HARDWARE;
                out.write(buf, 0, 1);
            } else if (platform == MessageArg.SOFTWARE) {
                receive_file_name = softwarePath;
                buf[0] = MessageArg.SOFTWARE;
                out.write(buf, 0, 1);
            } else if (platform == MessageArg.TOGETHER) {
                receive_file_name = softwarePath;
                buf[0] = MessageArg.TOGETHER;
                out.write(buf, 0, 1);
            }

            while ((len = fis.read(buf)) != -1) {
                out.write(buf, 0, len);
                i++;
            }

            Log.d("send_file_name", send_file_name);
            Log.d("send_file_size", i + "");

            socket.shutdownOutput();

            FileOutputStream fos = new FileOutputStream(receive_file_name);
            in = socket.getInputStream();

            buf = new byte[1024];
            len = 0;
            i = 0;


            int length = 16;
            byte[] time_bytes = new byte[length];
            in.read(time_bytes);

            process_time = 0;
            for (int s = 0; s < length; s++) {
                process_time += Math.pow(10, length - 1 - s) * time_bytes[s];
                Log.d("process_time:", process_time + "");
            }

            while ((len = in.read(buf)) != -1) {
                fos.write(buf, 0, len);
                i++;
            }

            Log.d("receive_file_name", receive_file_name);
            Log.d("receive_file_size", length + "");
            Log.d("receive_file_size", i + "");

            Log.d("MainActivity", "socket establish succeed!");


            socket.close();
            MessageArg.IP = ip;
            MessageArg.PORT = port;
            Message message = new Message();

            if (platform == MessageArg.HARDWARE)
                message.arg1 = MessageArg.TRANSMISSION_HARDWARE_SUCCEED;
            else if (platform == MessageArg.SOFTWARE)
                message.arg1 = MessageArg.TRANSMISSION_SOFTWARE_SUCCEED;
            else if (platform == MessageArg.TOGETHER)
                message.arg1 = MessageArg.TRANSMISSION_TOGETHER_SUCCEED;

            message.obj = process_time;
            activity.handler.sendMessage(message);

        } catch (IOException e) {
            e.printStackTrace();
            Log.d("MainActivity", "transmission fail!");
            Message message = new Message();
            message.arg1 = MessageArg.TRANSMISSIONFAIL;
            message.obj = process_time;
            activity.handler.sendMessage(message);
        }
    }

    public static Socket getSocket() {
        return socket;
    }
}
