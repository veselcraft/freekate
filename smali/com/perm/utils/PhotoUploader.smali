.class public Lcom/perm/utils/PhotoUploader;
.super Ljava/lang/Object;
.source "PhotoUploader.java"


# instance fields
.field private file_name:Ljava/lang/String;

.field private photo_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "photo_name"    # Ljava/lang/String;
    .param p2, "file_name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/perm/utils/PhotoUploader;->photo_name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/perm/utils/PhotoUploader;->file_name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private composeMessage(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V
    .locals 3
    .param p1, "picture"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/perm/utils/MultipartMessage;

    invoke-direct {v0, p2}, Lcom/perm/utils/MultipartMessage;-><init>(Ljava/io/OutputStream;)V

    .line 54
    .local v0, "mm":Lcom/perm/utils/MultipartMessage;
    iget-object v1, p0, Lcom/perm/utils/PhotoUploader;->photo_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/utils/PhotoUploader;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p3}, Lcom/perm/utils/MultipartMessage;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 55
    invoke-virtual {v0}, Lcom/perm/utils/MultipartMessage;->finish()V

    .line 56
    return-void
.end method

.method private getContentLength(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "picture"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/perm/utils/ByteCountingOutputStream;

    invoke-direct {v0}, Lcom/perm/utils/ByteCountingOutputStream;-><init>()V

    .line 60
    .local v0, "os":Lcom/perm/utils/ByteCountingOutputStream;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/perm/utils/PhotoUploader;->composeMessage(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 61
    invoke-virtual {v0}, Lcom/perm/utils/ByteCountingOutputStream;->size()J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method


# virtual methods
.method public upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "picture1"    # Ljava/io/InputStream;
    .param p2, "picture2"    # Ljava/io/InputStream;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/perm/utils/PhotoUploader;->upload1(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Ljava/io/InputStream;

    move-result-object v0

    .line 26
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "response":Ljava/lang/String;
    const-string v3, "Kate.PhotoUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "root":Lorg/json/JSONObject;
    return-object v2
.end method

.method public upload1(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Ljava/io/InputStream;
    .locals 6
    .param p1, "picture1"    # Ljava/io/InputStream;
    .param p2, "picture2"    # Ljava/io/InputStream;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 35
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 36
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    invoke-static {v0}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/utils/PhotoUploader;->getContentLength(Ljava/io/InputStream;)I

    move-result v2

    .line 39
    .local v2, "length":I
    if-eqz p4, :cond_0

    .line 40
    int-to-long v4, v2

    invoke-interface {p4, v4, v5}, Lcom/perm/utils/UploadProgressListener;->setTotalAmount(J)V

    .line 41
    :cond_0
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 45
    const-string v3, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart/form-data; boundary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/perm/utils/MultipartMessage;->getBoundary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p0, p2, v3, p4}, Lcom/perm/utils/PhotoUploader;->composeMessage(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 47
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 48
    .local v1, "is":Ljava/io/InputStream;
    return-object v1
.end method
