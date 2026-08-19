.class final Lcom/google/firebase/iid/zzp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzr;Z)Lcom/google/firebase/iid/zzr;
    .locals 8

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Writing ID to properties file"

    .line 64
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 66
    invoke-virtual {p3}, Lcom/google/firebase/iid/zzr;->zza()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-static {p3}, Lcom/google/firebase/iid/zzr;->zza(Lcom/google/firebase/iid/zzr;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cre"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzp;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 70
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 73
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    const-wide/16 v4, 0x0

    if-eqz p4, :cond_1

    .line 74
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long p4, v6, v4

    if-lez p4, :cond_1

    .line 75
    :try_start_3
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 76
    invoke-static {p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzr;

    move-result-object p3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/firebase/iid/zzs; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    invoke-static {p2, p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {p2, v3}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    return-object p3

    :catch_0
    move-exception p4

    goto :goto_0

    :catch_1
    move-exception p4

    .line 80
    :goto_0
    :try_start_6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Tried reading ID before writing new one, but failed with: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 83
    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object p4

    invoke-virtual {v2, p4, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :try_start_7
    invoke-static {p2, p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {p2, v3}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    return-object p3

    :catchall_0
    move-exception p3

    .line 87
    :try_start_9
    throw p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p4

    if-eqz p1, :cond_2

    .line 88
    :try_start_a
    invoke-static {p3, p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_2
    throw p4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 89
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception p3

    .line 90
    :try_start_c
    invoke-static {p1, v3}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V

    throw p3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception p1

    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Failed to write key: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;
    .locals 4

    .line 133
    invoke-static {p0, p1}, Lcom/google/firebase/iid/zzp;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "id"

    .line 135
    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzaq;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 136
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "|P|"

    .line 139
    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzaq;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v3

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/iid/zzaf;->zza(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    .line 144
    :cond_1
    new-instance p0, Lcom/google/firebase/iid/zzr;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/iid/zzr;-><init>(Ljava/lang/String;J)V

    return-object p0
.end method

.method private final zza(Ljava/io/File;)Lcom/google/firebase/iid/zzr;
    .locals 7

    .line 109
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 110
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    move-object v1, p1

    .line 112
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 113
    invoke-static {p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzr;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 114
    :try_start_2
    invoke-static {v2, p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v2, v0}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 116
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_0

    .line 117
    :try_start_4
    invoke-static {v1, p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 118
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    .line 119
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    throw v1
.end method

.method private static zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzr;
    .locals 3

    .line 120
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 121
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :try_start_0
    const-string p0, "cre"

    .line 122
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "id"

    .line 126
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "pub"

    .line 128
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/google/firebase/iid/zzp;->zza(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/iid/zzaf;->zza(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p0, Lcom/google/firebase/iid/zzs;

    const-string v0, "Invalid properties file"

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzs;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/firebase/iid/zzr;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/iid/zzr;-><init>(Ljava/lang/String;J)V

    return-object v0

    :catch_0
    move-exception p0

    .line 125
    new-instance v0, Lcom/google/firebase/iid/zzs;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzs;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private static zza(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    const/16 v0, 0x8

    .line 43
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "RSA"

    .line 47
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 50
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid key stored "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/google/firebase/iid/zzs;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzs;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p0

    .line 46
    new-instance v0, Lcom/google/firebase/iid/zzs;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzs;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static zza(Landroid/content/Context;)V
    .locals 5

    .line 17
    invoke-static {p0}, Lcom/google/firebase/iid/zzp;->zzb(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.InstanceId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzr;)V
    .locals 2

    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 146
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzp;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;

    move-result-object v0

    .line 147
    invoke-virtual {p3, v0}, Lcom/google/firebase/iid/zzr;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lcom/google/firebase/iid/zzs; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    nop

    :cond_0
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Writing key to shared preferences"

    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "id"

    .line 154
    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzaq;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/firebase/iid/zzr;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cre"

    .line 156
    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzaq;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-static {p3}, Lcom/google/firebase/iid/zzr;->zza(Lcom/google/firebase/iid/zzr;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 158
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 168
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzn;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method private static zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .locals 1

    const-string v0, "cre"

    .line 162
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzaq;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 163
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 165
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 94
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "FirebaseInstanceId"

    const-string v1, "noBackupFilesDir doesn\'t exist, using regular files directory instead"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;
    .locals 4

    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzp;->zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/iid/zzp;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzr;)V
    :try_end_0
    .catch Lcom/google/firebase/iid/zzs; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    const-string v2, "com.google.android.gms.appid"

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 33
    invoke-static {v2, p2}, Lcom/google/firebase/iid/zzp;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/firebase/iid/zzp;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzr;Z)Lcom/google/firebase/iid/zzr;
    :try_end_1
    .catch Lcom/google/firebase/iid/zzs; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception p1

    move-object v1, p1

    :cond_1
    if-nez v1, :cond_2

    return-object v0

    .line 41
    :cond_2
    throw v1
.end method

.method private final zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;
    .locals 3

    .line 52
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzp;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/io/File;)Lcom/google/firebase/iid/zzr;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/iid/zzs; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to read ID from file, retrying: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzp;->zza(Ljava/io/File;)Lcom/google/firebase/iid/zzr;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "IID file exists, but failed to read from it: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance p2, Lcom/google/firebase/iid/zzs;

    invoke-direct {p2, p1}, Lcom/google/firebase/iid/zzs;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method private static zze(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "com.google.InstanceId.properties"

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0xb

    .line 103
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "com.google.InstanceId_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".properties"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/firebase/iid/zzp;->zzb(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method final zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzp;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/zzp;->zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzr;
    .locals 5

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/zza;->zza()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/zzaf;->zza(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/firebase/iid/zzr;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/iid/zzr;-><init>(Ljava/lang/String;J)V

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/firebase/iid/zzp;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzr;Z)Lcom/google/firebase/iid/zzr;

    move-result-object v0

    const/4 v2, 0x3

    const-string v3, "FirebaseInstanceId"

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzr;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Loaded key after generating new one, using loaded one"

    .line 11
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    .line 13
    :cond_1
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Generated new key"

    .line 14
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/iid/zzp;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzr;)V

    return-object v1
.end method
