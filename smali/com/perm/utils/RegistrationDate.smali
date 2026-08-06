.class public Lcom/perm/utils/RegistrationDate;
.super Ljava/lang/Object;
.source "RegistrationDate.java"


# direct methods
.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/perm/utils/RegistrationDate;->getServerResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/perm/utils/RegistrationDate;->parseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/perm/utils/RegistrationDate;->displayDialogOnUiThread(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/perm/utils/RegistrationDate;->displayDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static displayDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f0703aa

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {v2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    const/4 v4, 0x0

    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 103
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 104
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 105
    return-void
.end method

.method private static displayDialogOnUiThread(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 1
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/perm/utils/RegistrationDate$2;

    invoke-direct {v0, p1, p0}, Lcom/perm/utils/RegistrationDate$2;-><init>(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getAndShow(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 27
    new-instance v0, Lcom/perm/utils/RegistrationDate$1;

    invoke-direct {v0, p1, p0}, Lcom/perm/utils/RegistrationDate$1;-><init>(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V

    .line 53
    invoke-virtual {v0}, Lcom/perm/utils/RegistrationDate$1;->start()V

    goto :goto_0
.end method

.method private static getServerResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 57
    const/4 v2, 0x0

    .line 59
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 60
    const/16 v5, 0x1388

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 61
    const/16 v5, 0x1388

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 62
    invoke-static {v2}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 63
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 64
    .local v1, "code":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 71
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v5, v6

    .line 74
    .end local v1    # "code":I
    :cond_1
    :goto_0
    return-object v5

    .line 66
    .restart local v1    # "code":I
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 71
    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 68
    .end local v1    # "code":I
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 69
    .local v4, "th":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v5, v6

    .line 74
    goto :goto_0

    .line 71
    .end local v4    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4

    .line 72
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v5
.end method

.method private static parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "resp"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v2, "ya:created dc:date=\"(.*?)\""

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 80
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 81
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
