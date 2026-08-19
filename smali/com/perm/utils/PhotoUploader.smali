.class public Lcom/perm/utils/PhotoUploader;
.super Ljava/lang/Object;
.source "PhotoUploader.java"


# instance fields
.field private file_name:Ljava/lang/String;

.field private photo_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/perm/utils/PhotoUploader;->photo_name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/perm/utils/PhotoUploader;->file_name:Ljava/lang/String;

    return-void
.end method

.method private composeMessage(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V
    .locals 2

    .line 52
    new-instance v0, Lcom/perm/utils/MultipartMessage;

    invoke-direct {v0, p2}, Lcom/perm/utils/MultipartMessage;-><init>(Ljava/io/OutputStream;)V

    .line 54
    iget-object p2, p0, Lcom/perm/utils/PhotoUploader;->photo_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/utils/PhotoUploader;->file_name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1, p3}, Lcom/perm/utils/MultipartMessage;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 55
    invoke-virtual {v0}, Lcom/perm/utils/MultipartMessage;->finish()V

    return-void
.end method

.method private getContentLength(Ljava/io/InputStream;)I
    .locals 2

    .line 59
    new-instance v0, Lcom/perm/utils/ByteCountingOutputStream;

    invoke-direct {v0}, Lcom/perm/utils/ByteCountingOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, v0, v1}, Lcom/perm/utils/PhotoUploader;->composeMessage(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 61
    invoke-virtual {v0}, Lcom/perm/utils/ByteCountingOutputStream;->size()J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/perm/utils/PhotoUploader;->upload1(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Ljava/io/InputStream;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "response="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Kate.PhotoUploader"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public upload1(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Ljava/io/InputStream;
    .locals 2

    .line 34
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p3

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "POST"

    .line 36
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    invoke-static {p3}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/perm/utils/PhotoUploader;->getContentLength(Ljava/io/InputStream;)I

    move-result p1

    if-eqz p4, :cond_0

    int-to-long v0, p1

    .line 40
    invoke-interface {p4, v0, v1}, Lcom/perm/utils/UploadProgressListener;->setTotalAmount(J)V

    .line 41
    :cond_0
    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "multipart/form-data; boundary="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/perm/utils/MultipartMessage;->getBoundary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Type"

    invoke-virtual {p3, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p0, p2, p1, p4}, Lcom/perm/utils/PhotoUploader;->composeMessage(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 47
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
