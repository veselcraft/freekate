.class public Lcom/perm/kate/VideoMenu;
.super Ljava/lang/Object;
.source "VideoMenu.java"


# instance fields
.field activity:Lcom/perm/kate/BaseActivity;

.field callback:Lcom/perm/kate/VideoMenuCallback;

.field fragment:Lcom/perm/kate/BaseFragment;

.field me:J


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V
    .locals 2
    .param p1, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p2, "fragment"    # Lcom/perm/kate/BaseFragment;
    .param p3, "callback"    # Lcom/perm/kate/VideoMenuCallback;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/VideoMenu;->me:J

    .line 48
    iput-object p1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    .line 49
    iput-object p2, p0, Lcom/perm/kate/VideoMenu;->fragment:Lcom/perm/kate/BaseFragment;

    .line 50
    iput-object p3, p0, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoMenu;JJLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoMenu;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/VideoMenu;->sendToFriend(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoMenu;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoMenu;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/VideoMenu;->showEditActivity(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoMenu;JJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoMenu;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/perm/kate/VideoMenu;->showAlbumsDialogWithCheck(JJJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoMenu;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoMenu;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/VideoMenu;->showVideoDetailsActivity(JJ)V

    return-void
.end method

.method private sendToFriend(JJLjava/lang/String;)V
    .locals 5
    .param p1, "video_owner_id"    # J
    .param p3, "video_id"    # J
    .param p5, "access_key"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "video_attachment":Ljava/lang/String;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-class v3, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    const-string v2, "com.perm.kate.only_members"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    const-string v2, "com.perm.kate.new_message"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    const-string v2, "com.perm.kate.video_attachment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v2, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method private showAlbumsDialogWithCheck(JJJ)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "video_id"    # J
    .param p5, "video_owner_id"    # J

    .prologue
    .line 284
    new-instance v8, Lcom/perm/kate/VideoMenu$7;

    invoke-direct {v8, p0}, Lcom/perm/kate/VideoMenu$7;-><init>(Lcom/perm/kate/VideoMenu;)V

    .line 291
    .local v8, "callback1":Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialogWithCheck(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 292
    return-void
.end method

.method private showEditActivity(JJ)V
    .locals 5
    .param p1, "oid"    # J
    .param p3, "vid"    # J

    .prologue
    const/4 v3, 0x3

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 274
    const-string v1, "com.perm.kate.video_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 275
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 276
    const-string v1, "com.perm.kate.is_edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0, v3}, Lcom/perm/kate/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0, v3}, Lcom/perm/kate/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showVideoDetailsActivity(JJ)V
    .locals 3
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.video_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method


# virtual methods
.method protected AddVideo(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;

    .prologue
    .line 203
    new-instance v0, Lcom/perm/kate/VideoMenu$3;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VideoMenu$3;-><init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;)V

    .line 217
    .local v0, "callback_add":Lcom/perm/kate/session/Callback;
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 218
    new-instance v1, Lcom/perm/kate/VideoMenu$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/VideoMenu$4;-><init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 223
    invoke-virtual {v1}, Lcom/perm/kate/VideoMenu$4;->start()V

    .line 224
    return-void
.end method

.method protected DeleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "target_id"    # J

    .prologue
    .line 227
    new-instance v6, Lcom/perm/kate/VideoMenu$5;

    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v6, p0, v0}, Lcom/perm/kate/VideoMenu$5;-><init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;)V

    .line 247
    .local v6, "callback_delete":Lcom/perm/kate/session/Callback;
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteVideo(JJ)Z

    .line 248
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/perm/kate/VideoMenuCallback;->beforeDelete(J)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 251
    new-instance v0, Lcom/perm/kate/VideoMenu$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/VideoMenu$6;-><init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;JLcom/perm/kate/session/Callback;)V

    .line 256
    invoke-virtual {v0}, Lcom/perm/kate/VideoMenu$6;->start()V

    .line 257
    return-void
.end method

.method public display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/perm/kate/api/Video;)V
    .locals 22
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "vid"    # J
    .param p4, "oid"    # J
    .param p6, "access_key"    # Ljava/lang/String;
    .param p7, "is_me"    # Z
    .param p8, "user_likes"    # Ljava/lang/Boolean;
    .param p9, "is_admin"    # Ljava/lang/Boolean;
    .param p10, "video"    # Lcom/perm/kate/api/Video;

    .prologue
    .line 54
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 55
    .local v13, "target_id":J
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v7, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07037e

    const/16 v8, 0x8

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07005f

    const/16 v8, 0xa

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    if-eqz p8, :cond_0

    .line 59
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    .line 60
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0700e0

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    :goto_1
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070518

    const/4 v8, 0x3

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0701d2

    const/4 v8, 0x7

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0701df

    const/16 v8, 0xb

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070179

    const/16 v8, 0x9

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07047f

    const/16 v8, 0x1d

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    if-nez p7, :cond_1

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/perm/kate/VideoMenu;->me:J

    cmp-long v5, p4, v8

    if-nez v5, :cond_2

    .line 71
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07018d

    const/16 v8, 0xc

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07002b

    const/16 v8, 0xe

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    if-nez p7, :cond_4

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 75
    :cond_4
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070084

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_2
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07037f

    const/4 v8, 0x6

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    if-nez p6, :cond_5

    .line 83
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isVideoCached(JJ)Z

    move-result v5

    if-nez v5, :cond_a

    .line 84
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070022

    const/16 v8, 0x19

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_5
    :goto_3
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0700de

    const/16 v8, 0xd

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 93
    .local v16, "account_id":J
    cmp-long v5, v16, p4

    if-eqz v5, :cond_6

    .line 94
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07016f

    const/16 v8, 0x17

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_6
    new-instance v19, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static {v7}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v20

    new-instance v5, Lcom/perm/kate/VideoMenu$1;

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move-object/from16 v15, p10

    invoke-direct/range {v5 .. v17}, Lcom/perm/kate/VideoMenu$1;-><init>(Lcom/perm/kate/VideoMenu;Ljava/util/ArrayList;JJLjava/lang/String;JLcom/perm/kate/api/Video;J)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v18

    .line 172
    .local v18, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 173
    .local v4, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 174
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 175
    return-void

    .line 54
    .end local v4    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v7    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v13    # "target_id":J
    .end local v16    # "account_id":J
    .end local v18    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_7
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/perm/kate/VideoMenu;->me:J

    goto/16 :goto_0

    .line 62
    .restart local v7    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v13    # "target_id":J
    :cond_8
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0700df

    const/4 v8, 0x2

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 77
    :cond_9
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0701d1

    const/4 v8, 0x4

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070021

    const/16 v8, 0x1e

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 86
    :cond_a
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0703ad

    const/16 v8, 0x1a

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStatus(JJ)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 88
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0703c4

    const/16 v8, 0x1b

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method protected setLike(ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V
    .locals 15
    .param p1, "like"    # Z
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "video_id"    # Ljava/lang/Long;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 179
    .local v6, "account_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v9, 0x6

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 180
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    if-eqz v0, :cond_0

    .line 181
    iget-object v9, p0, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move/from16 v14, p1

    invoke-interface/range {v9 .. v14}, Lcom/perm/kate/VideoMenuCallback;->userLikesChanged(JJZ)V

    .line 182
    :cond_0
    new-instance v0, Lcom/perm/kate/VideoMenu$2;

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/VideoMenu$2;-><init>(Lcom/perm/kate/VideoMenu;ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V

    .line 190
    invoke-virtual {v0}, Lcom/perm/kate/VideoMenu$2;->start()V

    .line 191
    return-void
.end method

.method protected showLikes(JJ)V
    .locals 3
    .param p1, "oid"    # J
    .param p3, "vid"    # J

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    const-string v1, "com.perm.kate.item_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    const-string v1, "com.perm.kate.item_type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method
