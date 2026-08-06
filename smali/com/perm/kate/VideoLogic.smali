.class public Lcom/perm/kate/VideoLogic;
.super Ljava/lang/Object;
.source "VideoLogic.java"


# direct methods
.method static synthetic access$000(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/api/Video;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->displayQualityMenu(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/api/Video;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/perm/kate/VideoLogic;->playExternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/api/Video;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->displayPlayWith(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/api/Video;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->playInternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->playBrowser(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/api/Video;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/api/Video;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->showInstructionsOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->openLink(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private static displayPlayWith(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 11
    .param p0, "video"    # Lcom/perm/kate/api/Video;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, "MENU_EXTERNAL":I
    const/4 v3, 0x1

    .line 449
    .local v3, "MENU_INTERNAL":I
    const/4 v0, 0x2

    .line 450
    .local v0, "MENU_BROWSER":I
    const/4 v1, 0x3

    .line 451
    .local v1, "MENU_BROWSER_PLAYER":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v5, "menuItems2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070382

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070383

    invoke-direct {v7, v8, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070380

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070381

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-static {v5}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/perm/kate/VideoLogic$7;

    invoke-direct {v9, v5, p0, p1}, Lcom/perm/kate/VideoLogic$7;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 477
    .local v6, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 478
    .local v4, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v4, v10}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 479
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 480
    return-void
.end method

.method private static displayQualityMenu(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 4
    .param p0, "video"    # Lcom/perm/kate/api/Video;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const-string v2, "240"

    const/16 v3, 0xf0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const-string v2, "360"

    const/16 v3, 0x168

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const-string v2, "480"

    const/16 v3, 0x1e0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 94
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const-string v2, "HD-720"

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const-string v2, "Full HD-1080"

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_6

    .line 99
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/perm/kate/VideoLogic;->playExternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    .line 133
    :cond_5
    :goto_0
    return-void

    .line 103
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 105
    new-instance v1, Lcom/perm/kate/VideoLogic$3;

    invoke-direct {v1, p1, v0, p0}, Lcom/perm/kate/VideoLogic$3;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/perm/kate/api/Video;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 8
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J
    .param p4, "access_key"    # Ljava/lang/String;
    .param p5, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 37
    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V

    .line 38
    return-void
.end method

.method public static fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V
    .locals 14
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J
    .param p4, "access_key"    # Ljava/lang/String;
    .param p5, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p6, "display_quality_menu"    # Z

    .prologue
    .line 45
    if-nez p6, :cond_0

    if-nez p4, :cond_0

    .line 46
    invoke-static/range {p0 .. p3}, Lcom/perm/kate/video_cache/VideoCache;->tryFromCache(JJ)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "path_in_cache":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 48
    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-static {v5, v0, v4}, Lcom/perm/kate/VideoLogic;->playExternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    .line 83
    .end local v4    # "path_in_cache":Ljava/lang/String;
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v11, Lcom/perm/kate/VideoLogic$1;

    move-object/from16 v0, p5

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v11, v0, v1, v2}, Lcom/perm/kate/VideoLogic$1;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Z)V

    .line 73
    .local v11, "callback_video":Lcom/perm/kate/session/Callback;
    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 74
    new-instance v5, Lcom/perm/kate/VideoLogic$2;

    move-wide/from16 v6, p2

    move-wide v8, p0

    move-object/from16 v10, p4

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/perm/kate/VideoLogic$2;-><init>(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 82
    invoke-virtual {v5}, Lcom/perm/kate/VideoLogic$2;->start()V

    goto :goto_0
.end method

.method public static fetchAndPlayWith(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 10
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J
    .param p4, "access_key"    # Ljava/lang/String;
    .param p5, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 137
    new-instance v7, Lcom/perm/kate/VideoLogic$4;

    invoke-direct {v7, p5, p5}, Lcom/perm/kate/VideoLogic$4;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;)V

    .line 163
    .local v7, "callback_video":Lcom/perm/kate/session/Callback;
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 164
    new-instance v1, Lcom/perm/kate/VideoLogic$5;

    move-wide v2, p2

    move-wide v4, p0

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/VideoLogic$5;-><init>(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 172
    invoke-virtual {v1}, Lcom/perm/kate/VideoLogic$5;->start()V

    .line 173
    return-void
.end method

.method public static fetchAndShowInstructions(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 10
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J
    .param p4, "access_key"    # Ljava/lang/String;
    .param p5, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 484
    new-instance v7, Lcom/perm/kate/VideoLogic$8;

    invoke-direct {v7, p5, p5}, Lcom/perm/kate/VideoLogic$8;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;)V

    .line 503
    .local v7, "callback_video":Lcom/perm/kate/session/Callback;
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 504
    new-instance v1, Lcom/perm/kate/VideoLogic$9;

    move-wide v2, p2

    move-wide v4, p0

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/VideoLogic$9;-><init>(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 512
    invoke-virtual {v1}, Lcom/perm/kate/VideoLogic$9;->start()V

    .line 513
    return-void
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "video_url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    const-string v1, ".mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    const-string v0, "mp4"

    goto :goto_0

    .line 219
    :cond_2
    const-string v1, ".flv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const-string v0, "flv"

    goto :goto_0
.end method

.method private static getFilename(Lcom/perm/kate/api/Video;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "video"    # Lcom/perm/kate/api/Video;
    .param p1, "video_url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 438
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-object v1

    .line 440
    :cond_1
    invoke-static {p1}, Lcom/perm/kate/VideoLogic;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->limitFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getQualityPreference()I
    .locals 4

    .prologue
    .line 200
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 201
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    .local v1, "settings":Landroid/content/SharedPreferences;
    const v2, 0x7f070531

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private static getRecommendedPlayers(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "video_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, "player_names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "player_urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "MX Player"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    const-string v0, "market://details?id=com.mxtech.videoplayer.ad"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    const-string v0, "VLC"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    const-string v0, "market://details?id=org.videolan.vlc"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    const-string v0, "BSPlayer FREE"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v0, "market://details?id=com.bsplayer.bspandroid.free"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    const-string v0, "KMPlayer"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    const-string v0, "market://details?id=com.kmplayer"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    const-string v0, "youtube"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    const-string v0, "YouTube"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    const-string v0, "market://details?id=com.google.android.youtube"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_1
    const-string v0, "flv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    const-string v0, "MX Player"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    const-string v0, "market://details?id=com.mxtech.videoplayer.ad"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    const-string v0, "VLC"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    const-string v0, "market://details?id=org.videolan.vlc"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v0, "BSPlayer FREE"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    const-string v0, "market://details?id=com.bsplayer.bspandroid.free"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    const-string v0, "KMPlayer"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v0, "market://details?id=com.kmplayer"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_2
    const-string v0, "rutube"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    const-string v0, "Rutube"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    const-string v0, "market://details?id=ru.rutube.app"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_3
    const-string v0, "coub"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 645
    const-string v0, "Coub Player"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    const-string v0, "market://details?id=ru.tihelper.coubclient"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_4
    const-string v0, "vimeo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    const-string v0, "Filmo HD for Vimeo"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    const-string v0, "market://details?id=com.husseinala.vimeoplayer"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    const-string v0, "Vimeo"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    const-string v0, "market://details?id=com.vimeo.android.videoapp"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_5
    return-void
.end method

.method private static getVideoTypeForFlurry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "video_url"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x1e

    .line 372
    if-nez p0, :cond_1

    .line 373
    const-string p0, "null"

    .line 434
    .end local p0    # "video_url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 374
    .restart local p0    # "video_url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 375
    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    const-string p0, "mp4"

    goto :goto_0

    .line 377
    :cond_2
    const-string v0, ".flv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    const-string p0, "flv"

    goto :goto_0

    .line 379
    :cond_3
    const-string v0, "youtu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    const-string p0, "youtube"

    goto :goto_0

    .line 381
    :cond_4
    const-string v0, "rutube"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    const-string p0, "rutube"

    goto :goto_0

    .line 383
    :cond_5
    const-string v0, "vimeo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    const-string p0, "vimeo"

    goto :goto_0

    .line 385
    :cond_6
    const-string v0, "coub.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 386
    const-string p0, "coub"

    goto :goto_0

    .line 387
    :cond_7
    const-string v0, "ivi.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 388
    const-string p0, "ivi"

    goto :goto_0

    .line 389
    :cond_8
    const-string v0, "carambatv.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    const-string p0, "carambatv"

    goto :goto_0

    .line 391
    :cond_9
    const-string v0, "dailymotion.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 392
    const-string p0, "dailymotion"

    goto :goto_0

    .line 393
    :cond_a
    const-string v0, "now.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 394
    const-string p0, "now"

    goto :goto_0

    .line 395
    :cond_b
    const-string v0, "megogo.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 396
    const-string p0, "megogo"

    goto :goto_0

    .line 397
    :cond_c
    const-string v0, "myvi.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 398
    const-string p0, "myvi"

    goto/16 :goto_0

    .line 399
    :cond_d
    const-string v0, "1tv.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 400
    const-string p0, "1tv"

    goto/16 :goto_0

    .line 401
    :cond_e
    const-string v0, "molodejj.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 402
    const-string p0, "molodejj"

    goto/16 :goto_0

    .line 403
    :cond_f
    const-string v0, "tvigle.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 404
    const-string p0, "tvigle"

    goto/16 :goto_0

    .line 405
    :cond_10
    const-string v0, "tchkcdn.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "tochka.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 406
    :cond_11
    const-string p0, "tochka"

    goto/16 :goto_0

    .line 407
    :cond_12
    const-string v0, "rutv.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 408
    const-string p0, "rutv"

    goto/16 :goto_0

    .line 409
    :cond_13
    const-string v0, "zoomby.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 410
    const-string p0, "zoomby"

    goto/16 :goto_0

    .line 411
    :cond_14
    const-string v0, "kinopoisk.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 412
    const-string p0, "kinopoisk"

    goto/16 :goto_0

    .line 413
    :cond_15
    const-string v0, "videomore.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 414
    const-string p0, "videomore"

    goto/16 :goto_0

    .line 415
    :cond_16
    const-string v0, "tvzavr.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 416
    const-string p0, "tvzavr"

    goto/16 :goto_0

    .line 417
    :cond_17
    const-string v0, "bigmir.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 418
    const-string p0, "bigmir"

    goto/16 :goto_0

    .line 419
    :cond_18
    const-string v0, "vireg.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 420
    const-string p0, "vireg"

    goto/16 :goto_0

    .line 421
    :cond_19
    const-string v0, "pladform"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 422
    const-string p0, "pladform"

    goto/16 :goto_0

    .line 423
    :cond_1a
    const-string v0, "smexo.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 424
    const-string p0, "smexo.tv"

    goto/16 :goto_0

    .line 425
    :cond_1b
    const-string v0, "videocore"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 426
    const-string p0, "videocore"

    goto/16 :goto_0

    .line 427
    :cond_1c
    const-string v0, "ntv.ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 428
    const-string p0, "ntv.ru"

    goto/16 :goto_0

    .line 429
    :cond_1d
    const-string v0, "vine.co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 430
    const-string p0, "vine"

    goto/16 :goto_0

    .line 432
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;
    .locals 5
    .param p0, "video"    # Lcom/perm/kate/api/Video;

    .prologue
    .line 176
    invoke-static {}, Lcom/perm/kate/VideoLogic;->getQualityPreference()I

    move-result v0

    .line 178
    .local v0, "quality_video":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    .line 195
    .local v1, "url":Ljava/lang/String;
    :goto_0
    const-string v2, "Kate.VideoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoUrl url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v1

    .line 180
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    iget-object v2, p0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 185
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v1    # "url":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 187
    iget-object v1, p0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 188
    .end local v1    # "url":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 189
    iget-object v1, p0, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v1    # "url":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/perm/kate/api/Video;->live:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 192
    iget-object v1, p0, Lcom/perm/kate/api/Video;->live:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v1    # "url":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/perm/kate/api/Video;->external:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method private static guessVideoType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "video_url"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "video/mp4"

    .line 211
    :goto_0
    return-object v0

    .line 208
    :cond_0
    const-string v0, ".flv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    const-string v0, "video/x-flv"

    goto :goto_0

    .line 211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static openLink(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 678
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 679
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v1

    .line 681
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 682
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static playBrowser(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 248
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static playExternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9
    .param p0, "video"    # Lcom/perm/kate/api/Video;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "video_url"    # Ljava/lang/String;

    .prologue
    .line 262
    if-nez p2, :cond_0

    .line 263
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object p2

    .line 264
    :cond_0
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->reportExternalVideoTry(Ljava/lang/String;)V

    .line 265
    if-eqz p2, :cond_1

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/api/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/perm/kate/VideoLogic;->playBrowser(Ljava/lang/String;Landroid/app/Activity;)V

    .line 313
    :goto_0
    return-void

    .line 269
    :cond_2
    const-string v6, "Kate.VideoLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video_url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v6, "m3u8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 275
    .local v3, "is_live":Z
    const-string v6, ".1080.mp4"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/perm/kate/session/Session;->isMusicOverHttp()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    .line 277
    const-string v6, "https://"

    const-string v7, "http://"

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 278
    const-string v6, "Kate.VideoLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video_url after https replace "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->vimeoFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 282
    const-string v6, "Kate.VideoLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video_url after vimeo fix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->rutubeFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 286
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->guessVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "type":Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/perm/kate/VideoLogic;->getFilename(Lcom/perm/kate/api/Video;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "filename":Ljava/lang/String;
    const-string v6, "Kate.VideoLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filename="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, "i":Landroid/content/Intent;
    if-eqz v5, :cond_5

    .line 293
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    :goto_1
    if-eqz v1, :cond_4

    .line 298
    const-string v6, "com.android.extra.filename"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :cond_4
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 300
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "is_live":Z
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-static {p2}, Lcom/perm/kate/VideoLogic;->reportExternalVideoNotInstalled(Ljava/lang/String;)V

    .line 304
    if-eqz p2, :cond_7

    const-string v6, ".mp4"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 305
    invoke-static {p0, p1}, Lcom/perm/kate/VideoLogic;->playInternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "i":Landroid/content/Intent;
    .restart local v3    # "is_live":Z
    .restart local v5    # "type":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 308
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "is_live":Z
    .end local v5    # "type":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 309
    .local v4, "th":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 310
    iget-object v6, p0, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 311
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 307
    .end local v4    # "th":Ljava/lang/Throwable;
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_7
    invoke-static {p1, p2}, Lcom/perm/kate/VideoLogic;->showInstructionsOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static playInternal(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V
    .locals 5
    .param p0, "video"    # Lcom/perm/kate/api/Video;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "video_url":Ljava/lang/String;
    const-string v3, "youtube"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const-string v3, "Kate.VideoLogic"

    const-string v4, "Can\'t play youtube in internal player"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v2    # "video_url":Ljava/lang/String;
    :goto_0
    return-void

    .line 231
    .restart local v2    # "video_url":Ljava/lang/String;
    :cond_0
    const-string v3, ".flv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    const-string v3, "Kate.VideoLogic"

    const-string v4, "Can\'t play FLV in internal player"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v2    # "video_url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 242
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v2    # "video_url":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-class v3, Lcom/perm/kate/VideoViewActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 237
    const-string v3, "video_url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static reportExternalVideoNotInstalled(Ljava/lang/String;)V
    .locals 3
    .param p0, "video_url"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 357
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoTypeForFlurry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v1, "VIDEO_EXTERNAL_NO_PLAYER_INSTALLED"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 359
    return-void
.end method

.method private static reportExternalVideoTry(Ljava/lang/String;)V
    .locals 8
    .param p0, "video_url"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 364
    .local v2, "time":J
    const-wide/16 v4, 0x64

    rem-long v4, v2, v4

    const-wide/16 v6, 0x63

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 366
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 367
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-static {p0}, Lcom/perm/kate/VideoLogic;->getVideoTypeForFlurry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "VIDEO_EXTERNAL_TRY"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static rutubeFix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "video_url"    # Ljava/lang/String;

    .prologue
    .line 333
    :try_start_0
    const-string v2, "video\\.rutube\\.ru/(\\d+)$"

    .line 334
    .local v2, "pattern_string":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 335
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 336
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://rutube.ru/video/embed/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 342
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "pattern_string":Ljava/lang/String;
    .end local p0    # "video_url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 338
    .restart local p0    # "video_url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 339
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static showInstructions(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "video_type"    # Ljava/lang/String;

    .prologue
    .line 517
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030117

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 520
    .local v7, "view":Landroid/view/View;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v8, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v0, "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    const v9, 0x7f0e0068

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const v9, 0x7f0e00e6

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const v9, 0x7f0e00a3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    const v9, 0x7f0e00e7

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const v9, 0x7f0e00cf

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    const v9, 0x7f0e0289

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    const v9, 0x7f0e00d2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    const v9, 0x7f0e0288

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v3, "player_names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v4, "player_urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, v3, v4}, Lcom/perm/kate/VideoLogic;->getRecommendedPlayers(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 535
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 536
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 537
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 539
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Lcom/perm/kate/VideoLogic$10;

    invoke-direct {v10, v6, p0}, Lcom/perm/kate/VideoLogic$10;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    new-instance v9, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    invoke-virtual {v9, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f070067

    const/4 v11, 0x0

    .line 548
    invoke-virtual {v9, v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v9

    .line 549
    invoke-virtual {v9}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 550
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 551
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0    # "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "i":I
    .end local v3    # "player_names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "player_urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_1
    return-void

    .line 552
    :catch_0
    move-exception v5

    .line 553
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 554
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static showInstructionsOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "video_url"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {p1}, Lcom/perm/kate/VideoLogic;->getVideoTypeForFlurry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "video_type":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/VideoLogic$6;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/VideoLogic$6;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method private static vimeoFix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "video_url"    # Ljava/lang/String;

    .prologue
    .line 318
    :try_start_0
    const-string v2, "vimeo\\.com/(\\d+)$"

    .line 319
    .local v2, "pattern_string":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 320
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 321
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://player.vimeo.com/video/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 327
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "pattern_string":Ljava/lang/String;
    .end local p0    # "video_url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 323
    .restart local p0    # "video_url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 324
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
