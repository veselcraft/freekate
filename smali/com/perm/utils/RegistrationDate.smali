.class public abstract Lcom/perm/utils/RegistrationDate;
.super Ljava/lang/Object;
.source "RegistrationDate.java"


# direct methods
.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/perm/utils/RegistrationDate;->getServerResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/perm/utils/RegistrationDate;->parseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/perm/utils/RegistrationDate;->displayDialogOnUiThread(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/perm/utils/RegistrationDate;->displayDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static displayDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 2

    .line 100
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f0428

    .line 101
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static displayDialogOnUiThread(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/perm/utils/RegistrationDate$2;

    invoke-direct {v0, p1, p0}, Lcom/perm/utils/RegistrationDate$2;-><init>(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAndShow(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 28
    new-instance v0, Lcom/perm/utils/RegistrationDate$1;

    invoke-direct {v0, p1, p0}, Lcom/perm/utils/RegistrationDate$1;-><init>(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static getServerResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x1388

    .line 62
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 63
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 64
    invoke-static {p0}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 65
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    .line 68
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    invoke-static {v1}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object p0, v0

    .line 71
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_1

    .line 74
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v0

    :catchall_2
    move-exception v0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    :cond_2
    throw v0
.end method

.method private static parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ya:created dc:date=\"(.*?)\""

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
