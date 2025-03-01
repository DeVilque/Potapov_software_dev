package com.example.fclient2;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import com.example.fclient2.databinding.ActivityMainBinding;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'fclient2' library on application startup.
    static {
        System.loadLibrary("fclient2");
        System.loadLibrary("mbedcrypto");
    }

    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        int res = initRng();
        Log.d("MY_DEBUG", "res" + Integer.toString(res));
        byte[] v = randomBytes(10);
        Log.d("MY_DEBUG", "v " + Arrays.toString(v));
        // Example of a call to a native method
        byte[] key = randomBytes(16);
        Log.d("MY_DEBUG", "key " + Arrays.toString(key));
        byte[] msg = randomBytes(10);
        Log.d("MY_DEBUG", "msg " + Arrays.toString(msg));
        byte[] encrypted = encrypt(key, msg);
        Log.d("MY_DEBUG", "encrypted " + Arrays.toString(encrypted));
        byte[] decrypted = decrypt(key, encrypted);
        Log.d("MY_DEBUG", "decrypted " + Arrays.toString(decrypted));
        TextView tv = binding.sampleText;
//        tv.setText(new String(v, StandardCharsets.UTF_8));
        tv.setText(stringFromJNI());

    }

    /**
     * A native method that is implemented by the 'fclient2' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();
    public static native int initRng();
    public static native byte[] randomBytes(int no);
    public static native byte[] encrypt(byte[] key, byte[] data);
    public static native byte[] decrypt(byte[] key, byte[] data);
}