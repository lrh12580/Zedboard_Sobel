package com.example.cameratest1;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.FileProvider;

import android.Manifest;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.util.Log;
import android.view.View;
import android.widget.Adapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;

import java.io.File;
import java.net.Socket;
import java.util.List;

import pub.devrel.easypermissions.EasyPermissions;

public class MainActivity extends AppCompatActivity implements View.OnClickListener, EasyPermissions.PermissionCallbacks {

    private ImageView ivTest;
    private ImageView ivTest_hardware;
    private ImageView ivTest_software;

    private TextView textView_hardware;
    private TextView textView_software;
    private TextView textView_together;

    private EditText ip_edit;

    private File cameraSavePath;
    private Uri uri;
    private String[] permissions = {Manifest.permission.CAMERA, Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.READ_EXTERNAL_STORAGE};

    private MainActivity mainActivity;
    private String photoPath;
    private String hardwarePath;
    private String softwarePath;

    private String server_ip = "10.157.90.240";
    //    private String server_ip = "10.145.109.35";
//    private String server_ip = "192.168.0.103";
    private int server_port = 12580;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        setContentView(R.layout.activity_main);
        mainActivity = this;

        Button btnGetPicFromCamera = findViewById(R.id.btn_get_pic_from_camera);
        Button btnGetPicFromPhotoAlbum = findViewById(R.id.btn_get_pic_form_photo_album);
        Button btnHardware = findViewById(R.id.hardware_result);
        Button btnSoftware = findViewById(R.id.software_result);
        Button btnTogether = findViewById(R.id.together_result);

        ivTest = findViewById(R.id.iv_test);
        ivTest_hardware = findViewById(R.id.iv_test_hardware);
        ivTest_software = findViewById(R.id.iv_test_software);

        textView_hardware = findViewById(R.id.hardware_time);
        textView_software = findViewById(R.id.software_time);
        textView_together = findViewById(R.id.together_time);

        ip_edit = findViewById(R.id.ip_address);

        btnGetPicFromCamera.setOnClickListener(this);
        btnGetPicFromPhotoAlbum.setOnClickListener(this);
        btnHardware.setOnClickListener(this);
        btnSoftware.setOnClickListener(this);
        btnTogether.setOnClickListener(this);

        if (!EasyPermissions.hasPermissions(this, permissions)) {
            EasyPermissions.requestPermissions(this, "Requires Permission", 1, permissions);
        }

        cameraSavePath = new File(Environment.getExternalStorageDirectory().getPath() + "/" + System.currentTimeMillis() + ".jpg");
//        cameraSavePath = new File(this.getApplicationContext().getExternalFilesDir(Environment.DIRECTORY_PICTURES), System.currentTimeMillis()+"");
    }

    @Override
    public void onClick(View v) {
        int id = v.getId();
        switch (id) {
            case R.id.btn_get_pic_from_camera:
                goCamera();
                break;
            case R.id.btn_get_pic_form_photo_album:
                goPhotoAlbum();
                break;
            case R.id.hardware_result:
                sendData(MessageArg.HARDWARE);
                break;
            case R.id.software_result:
                sendData(MessageArg.SOFTWARE);
                break;
            case R.id.together_result:
                sendData(MessageArg.TOGETHER);
                break;
        }
    }


    private void goPhotoAlbum() {
        Intent intent = new Intent();
        intent.setAction(Intent.ACTION_PICK);
        intent.setType("image/*");
        MainActivity.this.startActivityForResult(intent, 2);
    }

    private void goCamera() {
        Intent intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            uri = FileProvider.getUriForFile(MainActivity.this, "com.example.hxd.pictest.fileprovider", cameraSavePath);
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        } else {
            uri = Uri.fromFile(cameraSavePath);
        }

        intent.putExtra(MediaStore.EXTRA_OUTPUT, uri);
        MainActivity.this.startActivityForResult(intent, 1);
    }

    private void sendData(int platform) {
        server_ip = ip_edit.getText().toString();
        SocketThread socketThread = new SocketThread(server_ip, server_port, mainActivity, photoPath, hardwarePath, softwarePath, platform);
        socketThread.start();
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        EasyPermissions.onRequestPermissionsResult(requestCode, permissions, grantResults, this);
    }

    @Override
    public void onPermissionsGranted(int requestCode, @NonNull List<String> perms) {
        Toast.makeText(this, "Permission Granted", Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onPermissionsDenied(int requestCode, @NonNull List<String> perms) {
        Toast.makeText(this, "Permission Denied", Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 1 && resultCode == RESULT_OK) {

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                photoPath = String.valueOf(cameraSavePath);
            } else {
                photoPath = uri.getEncodedPath();
            }

            hardwarePath = "";
            String[] tmp = photoPath.split("\\.");
            for (int i = 0; i < tmp.length - 1; i++)
                hardwarePath += tmp[i];

            hardwarePath += "_1.";
            hardwarePath += tmp[tmp.length - 1];
            File file = new File(hardwarePath);
            if (file.exists())
                file.delete();

            softwarePath = "";
            tmp = photoPath.split("\\.");
            for (int i = 0; i < tmp.length - 1; i++)
                softwarePath += tmp[i];

            softwarePath += "_2.";
            softwarePath += tmp[tmp.length - 1];
            file = new File(softwarePath);
            if (file.exists())
                file.delete();

            Log.d("photoPath:", photoPath);
            Log.d("hardwarePath:", hardwarePath);
            Log.d("softwarePath:", softwarePath);
            Glide.with(MainActivity.this).load(photoPath).into(ivTest);
        } else if (requestCode == 2 && resultCode == RESULT_OK) {
            photoPath = getPhotoFromPhotoAlbum.getRealPathFromUri(this, data.getData());

            hardwarePath = "";
            String[] tmp = photoPath.split("\\.");
            for (int i = 0; i < tmp.length - 1; i++)
                hardwarePath += tmp[i];

            hardwarePath += "_1.";
            hardwarePath += tmp[tmp.length - 1];
            File file = new File(hardwarePath);
            if (file.exists())
                file.delete();

            softwarePath = "";
            tmp = photoPath.split("\\.");
            for (int i = 0; i < tmp.length - 1; i++)
                softwarePath += tmp[i];

            softwarePath += "_2.";
            softwarePath += tmp[tmp.length - 1];
            file = new File(softwarePath);
            if (file.exists())
                file.delete();

            Log.d("photoPath:", photoPath);
            Log.d("hardwarePath:", hardwarePath);
            Log.d("softwarePath:", softwarePath);

            Glide.with(MainActivity.this).load(photoPath).into(ivTest);
        }

        super.onActivityResult(requestCode, resultCode, data);
    }


    public Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.arg1) {
                case MessageArg.TRANSMISSION_HARDWARE_SUCCEED:
                    Toast.makeText(MainActivity.this, "Transmission Succeed!", Toast.LENGTH_SHORT).show();
                    textView_hardware.setText("Time is " + msg.obj.toString() + " us");
                    Glide.with(MainActivity.this).load(hardwarePath).into(ivTest_hardware);
                    Log.d("time: ", msg.obj.toString());
                    break;
                case MessageArg.TRANSMISSION_SOFTWARE_SUCCEED:
                    Toast.makeText(MainActivity.this, "Transmission Succeed!", Toast.LENGTH_SHORT).show();
                    Glide.with(MainActivity.this).load(softwarePath).into(ivTest_software);
                    textView_software.setText("Time is " + msg.obj.toString() + " us");
                    Log.d("time: ", msg.obj.toString());
                    break;
                case MessageArg.TRANSMISSION_TOGETHER_SUCCEED:
                    Toast.makeText(MainActivity.this, "Transmission Succeed!", Toast.LENGTH_SHORT).show();
                    textView_together.setText("When HW/SW run together, total time is " + msg.obj.toString() + " us");
                    Log.d("time: ", msg.obj.toString());
                    break;
                case MessageArg.TRANSMISSIONFAIL:
                    Toast.makeText(MainActivity.this, "Transmission Fail!", Toast.LENGTH_SHORT).show();
                    break;
            }
        }
    };

}
