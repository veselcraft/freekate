.class public abstract Lcom/perm/kate/VideoLogic;
.super Ljava/lang/Object;
.source "VideoLogic.java"


# direct methods
.method public static synthetic $r8$lambda$e5wyS90lcgM4ya5k-dcSQVKw_WE(Lcom/perm/kate/api/Video;)V
    .locals 0

    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->lambda$playExternal$0(Lcom/perm/kate/api/Video;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->isPHPUrlHLS(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getDirectHLSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->displayQualityMenu(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/api/Video;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->playInternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/perm/kate/VideoLogic;->playExternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->displayPlayWith(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->playBrowser(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->showInstructionsOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->openLink(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private static displayPlayWith(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 5

    .line 551
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 557
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03ed

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03ee

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03eb

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03ec

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 563
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/VideoLogic$7;

    invoke-direct {v4, v0, p0, p1}, Lcom/perm/kate/VideoLogic$7;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 583
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 584
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 585
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static displayQualityMenu(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 4

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const/16 v2, 0xf0

    const-string v3, "240"

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const/16 v2, 0x168

    const-string v3, "360"

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const/16 v2, 0x1e0

    const-string v3, "480"

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const/16 v2, 0x2d0

    const-string v3, "HD-720"

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const/16 v2, 0x438

    const-string v3, "Full HD-1080"

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, v2, :cond_5

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p1, v0}, Lcom/perm/kate/VideoLogic;->playExternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 123
    :cond_6
    new-instance v1, Lcom/perm/kate/VideoLogic$3;

    invoke-direct {v1, p1, v0, p0}, Lcom/perm/kate/VideoLogic$3;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/perm/kate/api/Video;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 7

    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 46
    invoke-static/range {v0 .. v6}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V

    return-void
.end method

.method public static fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V
    .locals 9

    if-nez p6, :cond_0

    if-nez p4, :cond_0

    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/video_cache/VideoCache;->tryFromCache(JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 57
    invoke-static {p0, p5, v0}, Lcom/perm/kate/VideoLogic;->playExternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    new-instance v7, Lcom/perm/kate/VideoLogic$1;

    invoke-direct {v7, p5, p5, p6}, Lcom/perm/kate/VideoLogic$1;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Z)V

    const/4 p6, 0x1

    .line 91
    invoke-virtual {p5, p6}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 92
    new-instance p6, Lcom/perm/kate/VideoLogic$2;

    move-object v1, p6

    move-wide v2, p2

    move-wide v4, p0

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/VideoLogic$2;-><init>(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 100
    invoke-virtual {p6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static fetchAndPlayWith(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 9

    .line 155
    new-instance v6, Lcom/perm/kate/VideoLogic$4;

    invoke-direct {v6, p5, p5}, Lcom/perm/kate/VideoLogic$4;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;)V

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p5, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 184
    new-instance v8, Lcom/perm/kate/VideoLogic$5;

    move-object v0, v8

    move-wide v1, p2

    move-wide v3, p0

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/VideoLogic$5;-><init>(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 192
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static fetchAndShowInstructions(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 9

    .line 590
    new-instance v6, Lcom/perm/kate/VideoLogic$8;

    invoke-direct {v6, p5, p5}, Lcom/perm/kate/VideoLogic$8;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;)V

    const/4 v0, 0x1

    .line 609
    invoke-virtual {p5, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 610
    new-instance v8, Lcom/perm/kate/VideoLogic$9;

    move-object v0, v8

    move-wide v1, p2

    move-wide v3, p0

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/VideoLogic$9;-><init>(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 618
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static getDirectHLSUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 203
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    .line 208
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 212
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "#"

    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 220
    :cond_2
    invoke-static {v1}, Lcom/perm/kate/VideoLogic;->getHLSUrlbyQuality(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 224
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v2, :cond_3

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 222
    :goto_2
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 228
    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object p0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 229
    :cond_4
    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ".mp4"

    .line 298
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "mp4"

    return-object p0

    :cond_1
    const-string v1, ".flv"

    .line 300
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "flv"

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static getFilename(Lcom/perm/kate/api/Video;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/VideoLogic;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "mp4"

    .line 547
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-static {p0}, Lcom/perm/kate/Helper;->limitFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getHLSUrlbyQuality(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2

    .line 234
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 235
    invoke-static {}, Lcom/perm/kate/VideoLogic;->getQualityPreference()I

    move-result v0

    .line 236
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 239
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getQualityPreference()I
    .locals 3

    .line 270
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 271
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0f0163

    .line 272
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getRecommendedPlayers(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    const-string v0, "mp4"

    .line 666
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "market://details?id=com.bsplayer.bspandroid.free"

    const-string v2, "BSPlayer FREE"

    const-string v3, "market://details?id=com.kmplayer"

    const-string v4, "KMPlayer"

    const-string v5, "market://details?id=org.videolan.vlc"

    const-string v6, "VLC"

    const-string v7, "market://details?id=com.mxtech.videoplayer.ad"

    const-string v8, "MX Player"

    if-nez v0, :cond_0

    const-string v0, "vkvd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vkuser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    :cond_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "youtube"

    .line 703
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "YouTube"

    .line 705
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "market://details?id=com.google.android.youtube"

    .line 706
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "flv"

    .line 720
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v0, "rutube"

    .line 744
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Rutube"

    .line 746
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "market://details?id=ru.rutube.app"

    .line 747
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "coub"

    .line 749
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Coub Player"

    .line 751
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "market://details?id=ru.tihelper.coubclient"

    .line 752
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v0, "vimeo"

    .line 754
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Filmo HD for Vimeo"

    .line 756
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "market://details?id=com.husseinala.vimeoplayer"

    .line 757
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Vimeo"

    .line 760
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "market://details?id=com.vimeo.android.videoapp"

    .line 761
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v0, "m3u8"

    .line 776
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 778
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private static getVideoTypeForFlurry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 467
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".mp4"

    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "mp4"

    return-object p0

    :cond_1
    const-string v0, ".flv"

    .line 470
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "flv"

    return-object p0

    :cond_2
    const-string v0, "youtu"

    .line 472
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "youtube"

    return-object p0

    :cond_3
    const-string v0, "rutube"

    .line 474
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "vimeo"

    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "coub.com"

    .line 478
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "coub"

    return-object p0

    :cond_6
    const-string v0, "ivi.ru"

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "ivi"

    return-object p0

    :cond_7
    const-string v0, "carambatv.ru"

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "carambatv"

    return-object p0

    :cond_8
    const-string v0, "dailymotion.com"

    .line 484
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "dailymotion"

    return-object p0

    :cond_9
    const-string v0, "now.ru"

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "now"

    return-object p0

    :cond_a
    const-string v0, "megogo.net"

    .line 488
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "megogo"

    return-object p0

    :cond_b
    const-string v0, "myvi.ru"

    .line 490
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "myvi"

    return-object p0

    :cond_c
    const-string v0, "1tv.ru"

    .line 492
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "1tv"

    return-object p0

    :cond_d
    const-string v0, "molodejj.tv"

    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "molodejj"

    return-object p0

    :cond_e
    const-string v0, "tvigle.ru"

    .line 496
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "tvigle"

    return-object p0

    :cond_f
    const-string v0, "tchkcdn.com"

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "tochka.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_1

    :cond_10
    const-string v0, "rutv.ru"

    .line 500
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "rutv"

    return-object p0

    :cond_11
    const-string v0, "zoomby.ru"

    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "zoomby"

    return-object p0

    :cond_12
    const-string v0, "kinopoisk.ru"

    .line 504
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "kinopoisk"

    return-object p0

    :cond_13
    const-string v0, "videomore.ru"

    .line 506
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "videomore"

    return-object p0

    :cond_14
    const-string v0, "tvzavr.ru"

    .line 508
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "tvzavr"

    return-object p0

    :cond_15
    const-string v0, "bigmir.net"

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "bigmir"

    return-object p0

    :cond_16
    const-string v0, "vireg.tv"

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "vireg"

    return-object p0

    :cond_17
    const-string v0, "pladform"

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-object v0

    :cond_18
    const-string v0, "smexo.tv"

    .line 516
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-object v0

    :cond_19
    const-string v0, "videocore"

    .line 518
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    :cond_1a
    const-string v0, "ntv.ru"

    .line 520
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    :cond_1b
    const-string v0, "vine.co"

    .line 522
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "vine"

    return-object p0

    :cond_1c
    const-string v0, "m3u8"

    .line 529
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "video_hls"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_0

    :cond_1d
    const-string v0, "://vkvd"

    .line 531
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "vkvd"

    return-object p0

    :cond_1e
    const-string v0, ".vkuser.net/"

    .line 533
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "vkuser"

    return-object p0

    .line 536
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_20

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0

    :cond_21
    :goto_0
    return-object v0

    :cond_22
    :goto_1
    const-string p0, "tochka"

    return-object p0
.end method

.method private static getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;
    .locals 2

    .line 243
    invoke-static {}, Lcom/perm/kate/VideoLogic;->getQualityPreference()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 250
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 251
    iget-object v0, p0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 254
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 256
    iget-object p0, p0, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 258
    iget-object p0, p0, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/api/Video;->live:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 262
    iget-object p0, p0, Lcom/perm/kate/api/Video;->live:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_7
    iget-object p0, p0, Lcom/perm/kate/api/Video;->external:Ljava/lang/String;

    .line 265
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoUrl url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.VideoLogic"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static guessVideoType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".mp4"

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "video/mp4"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ".flv"

    .line 278
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "video/x-flv"

    return-object p0

    :cond_1
    const-string v0, ".m3u8"

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "application/x-mpegURL"

    return-object p0

    :cond_2
    const-string v0, "://vkvd"

    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, ".vkuser.net/"

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isPHPUrlHLS(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "video_hls.php"

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$playExternal$0(Lcom/perm/kate/api/Video;)V
    .locals 2

    .line 351
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object p0, p0, Lcom/perm/kate/api/Video;->content_restricted_message:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static openLink(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 802
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 803
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 805
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 806
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static playBrowser(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 329
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static playExternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    const-string v0, "Kate.VideoLogic"

    if-nez p2, :cond_0

    .line 344
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object p2

    .line 345
    :cond_0
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->reportExternalVideoTry(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 349
    iget-object v1, p0, Lcom/perm/kate/api/Video;->content_restricted_message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    new-instance v1, Lcom/perm/kate/VideoLogic$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/VideoLogic$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/api/Video;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p2, :cond_6

    const-string v1, ""

    .line 354
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 358
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "m3u8"

    .line 361
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ".1080.mp4"

    .line 364
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/perm/kate/session/Session;->isVideoOverHttp()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    const-string v1, "https://"

    const-string v2, "http://"

    .line 366
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_url after https replace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->vimeoFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_url after vimeo fix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->rutubeFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 375
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->guessVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {p0, p2}, Lcom/perm/kate/VideoLogic;->getFilename(Lcom/perm/kate/api/Video;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 382
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 384
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    if-eqz v2, :cond_5

    const-string v1, "com.android.extra.filename"

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    :cond_5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 355
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/perm/kate/api/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/perm/kate/VideoLogic;->playBrowser(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 398
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz p0, :cond_7

    .line 399
    iget-object p0, p0, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    :goto_2
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 400
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_0
    nop

    .line 390
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->reportExternalVideoNotInstalled(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    const-string v0, ".mp4"

    .line 393
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 394
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->playInternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    goto :goto_3

    .line 396
    :cond_9
    invoke-static {p1, p2}, Lcom/perm/kate/VideoLogic;->showInstructionsOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static playInternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 2

    .line 307
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "youtube"

    .line 308
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Kate.VideoLogic"

    if-eqz v0, :cond_0

    :try_start_1
    const-string p0, "Can\'t play youtube in internal player"

    .line 309
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, ".flv"

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Can\'t play FLV in internal player"

    .line 313
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    const-class v1, Lcom/perm/kate/VideoViewActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "video_url"

    .line 318
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 321
    invoke-static {p0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 322
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 323
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static reportExternalVideoNotInstalled(Ljava/lang/String;)V
    .locals 5

    .line 446
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    .line 447
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x5a

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 450
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoTypeForFlurry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "VIDEO_EXTERNAL_NO_PLAYER_INSTALLED"

    .line 451
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static reportExternalVideoTry(Ljava/lang/String;)V
    .locals 5

    .line 456
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    .line 457
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x270b

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 460
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoTypeForFlurry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "VIDEO_EXTERNAL_TRY"

    .line 461
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static rutubeFix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "video\\.rutube\\.ru/(\\d+)$"

    .line 423
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 424
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://rutube.ru/video/embed/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 429
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method static showInstructions(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 10

    .line 623
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0137

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 626
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 627
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f090138

    .line 628
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f09009e

    .line 629
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f090139

    .line 630
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f09009c

    .line 631
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f09013a

    .line 632
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f09009d

    .line 633
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f09013b

    .line 634
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f09009f

    .line 635
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 638
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 639
    invoke-static {p1, v4, v5}, Lcom/perm/kate/VideoLogic;->getRecommendedPlayers(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 641
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 642
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->setVisibility(I)V

    .line 643
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 645
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Lcom/perm/kate/VideoLogic$10;

    invoke-direct {v9, v7, p0}, Lcom/perm/kate/VideoLogic$10;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 652
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 653
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f0f0086

    .line 654
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 655
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 656
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 657
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 659
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 660
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static showInstructionsOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 435
    invoke-static {p1}, Lcom/perm/kate/VideoLogic;->getVideoTypeForFlurry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 436
    new-instance v0, Lcom/perm/kate/VideoLogic$6;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/VideoLogic$6;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static vimeoFix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "vimeo\\.com/(\\d+)$"

    .line 408
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 409
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://player.vimeo.com/video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 414
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method
