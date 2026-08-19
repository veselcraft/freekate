.class Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private final encryptionIv:[B

.field private final encryptionKey:[B

.field private final upstream:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->encryptionKey:[B

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->encryptionIv:[B

    return-void
.end method


# virtual methods
.method public final addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1

    .line 69
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    :cond_0
    return-void
.end method

.method protected getCipherInstance()Ljavax/crypto/Cipher;
    .locals 1

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 128
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 4

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->encryptionKey:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 83
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->encryptionIv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 86
    :try_start_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-direct {v1, v2, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 92
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 93
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->open()V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 88
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 79
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method
