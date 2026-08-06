.class public Lcom/perm/utils/VideoAlbumsHelper;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;,
        Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;
    }
.end annotation


# static fields
.field static albumDialog:Landroid/support/v7/app/AlertDialog;

.field private static albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static checked:Z

.field static errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

.field private static videoAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/AudioAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private static whoseVideoAlbums:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/perm/utils/VideoAlbumsHelper;->whoseVideoAlbums:J

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/utils/VideoAlbumsHelper;->checked:Z

    .line 133
    sput-object v2, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroid/support/v7/app/AlertDialog;

    .line 134
    sput-object v2, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    .prologue
    .line 16
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/VideoAlbumsHelper;->checkVideoAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 16
    sput-object p0, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    .prologue
    .line 16
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # J
    .param p9, "x5"    # Z
    .param p10, "x6"    # Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    .prologue
    .line 16
    invoke-static/range {p0 .. p10}, Lcom/perm/utils/VideoAlbumsHelper;->addRemoveToAlbum(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # [Ljava/lang/CharSequence;
    .param p2, "x2"    # [Z
    .param p3, "x3"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .param p4, "x4"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "x5"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 16
    invoke-static/range {p0 .. p5}, Lcom/perm/utils/VideoAlbumsHelper;->createAlbumsDialog(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static addRemoveToAlbum(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V
    .locals 13
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "owner_id"    # J
    .param p3, "video_id"    # J
    .param p5, "video_owner_id"    # J
    .param p7, "album_id"    # J
    .param p9, "add"    # Z
    .param p10, "errorCallback"    # Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    .prologue
    .line 201
    new-instance v0, Lcom/perm/utils/VideoAlbumsHelper$10;

    move-object v1, p0

    move-object v2, p0

    move-object/from16 v3, p10

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/perm/utils/VideoAlbumsHelper$10;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;J)V

    .line 220
    .local v0, "callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/utils/VideoAlbumsHelper$11;

    move-object v2, p0

    move/from16 v3, p9

    move-wide v4, p1

    move-wide/from16 v6, p7

    move-wide/from16 v8, p5

    move-wide/from16 v10, p3

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/perm/utils/VideoAlbumsHelper$11;-><init>(Lcom/perm/kate/BaseActivity;ZJJJJLcom/perm/kate/session/Callback;)V

    .line 229
    invoke-virtual {v1}, Lcom/perm/utils/VideoAlbumsHelper$11;->start()V

    .line 230
    return-void
.end method

.method private static checkVideoAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 9
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "owner_id"    # J
    .param p3, "video_id"    # J
    .param p5, "video_owner_id"    # J
    .param p7, "callback"    # Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-boolean v0, Lcom/perm/utils/VideoAlbumsHelper;->checked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/VideoAlbumsHelper;->getAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lcom/perm/utils/VideoAlbumsHelper$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/perm/utils/VideoAlbumsHelper$5;-><init>(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static createAlbumsDialog(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog;
    .locals 2
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checked"    # [Z
    .param p3, "check_listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .param p4, "ok_listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 191
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 194
    const v1, 0x7f070067

    invoke-virtual {v0, v1, p4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v0, p5}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static getAddedAlbum(Lcom/perm/kate/BaseActivity;)Lcom/perm/kate/api/AudioAlbum;
    .locals 4
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 28
    new-instance v0, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    .line 29
    .local v0, "all_album":Lcom/perm/kate/api/AudioAlbum;
    const-wide/16 v2, -0x2

    iput-wide v2, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 30
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 31
    return-object v0
.end method

.method private static getAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 11
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "owner_id"    # J
    .param p3, "video_id"    # J
    .param p5, "video_owner_id"    # J
    .param p7, "callback1"    # Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    .prologue
    .line 42
    new-instance v1, Lcom/perm/utils/VideoAlbumsHelper$1;

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/perm/utils/VideoAlbumsHelper$1;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 65
    .local v1, "callback":Lcom/perm/kate/session/Callback;
    new-instance v0, Lcom/perm/utils/VideoAlbumsHelper$2;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/perm/utils/VideoAlbumsHelper$2;-><init>(Lcom/perm/kate/BaseActivity;JLcom/perm/kate/session/Callback;)V

    .line 73
    invoke-virtual {v0}, Lcom/perm/utils/VideoAlbumsHelper$2;->start()V

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/perm/utils/VideoAlbumsHelper;->checked:Z

    .line 75
    return-void
.end method

.method private static getAlbumsByVideo(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 11
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "owner_id"    # J
    .param p3, "video_id"    # J
    .param p5, "video_owner_id"    # J
    .param p7, "callback1"    # Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    .prologue
    .line 78
    new-instance v1, Lcom/perm/utils/VideoAlbumsHelper$3;

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/perm/utils/VideoAlbumsHelper$3;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 96
    .local v1, "callback":Lcom/perm/kate/session/Callback;
    new-instance v2, Lcom/perm/utils/VideoAlbumsHelper$4;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/perm/utils/VideoAlbumsHelper$4;-><init>(Lcom/perm/kate/BaseActivity;JJJLcom/perm/kate/session/Callback;)V

    .line 102
    invoke-virtual {v2}, Lcom/perm/utils/VideoAlbumsHelper$4;->start()V

    .line 103
    return-void
.end method

.method public static getUploadedAlbum(Lcom/perm/kate/BaseActivity;)Lcom/perm/kate/api/AudioAlbum;
    .locals 4
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 35
    new-instance v0, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    .line 36
    .local v0, "all_album":Lcom/perm/kate/api/AudioAlbum;
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 37
    const v1, 0x7f0704fb

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 38
    return-object v0
.end method

.method private static showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 21
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "owner_id"    # J
    .param p3, "video_id"    # J
    .param p5, "video_owner_id"    # J
    .param p7, "callback"    # Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    .prologue
    .line 136
    sget-object v3, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 137
    .local v12, "size":I
    new-array v15, v12, [Ljava/lang/CharSequence;

    .line 138
    .local v15, "items":[Ljava/lang/CharSequence;
    new-array v13, v12, [Z

    .line 139
    .local v13, "checked":[Z
    new-array v10, v12, [J

    .line 140
    .local v10, "albums_ids":[J
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v12, :cond_1

    .line 141
    sget-object v3, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/AudioAlbum;

    iget-object v3, v3, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    aput-object v3, v15, v19

    .line 142
    sget-object v3, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v4, v3, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    aput-wide v4, v10, v19

    .line 143
    sget-object v3, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 144
    sget-object v4, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    sget-object v3, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v6, v3, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v13, v19

    .line 140
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v2, Lcom/perm/utils/VideoAlbumsHelper$6;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/perm/utils/VideoAlbumsHelper$6;-><init>(Lcom/perm/kate/BaseActivity;JJJ[J)V

    .line 152
    .local v2, "check_listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    new-instance v17, Lcom/perm/utils/VideoAlbumsHelper$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/perm/utils/VideoAlbumsHelper$7;-><init>(Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 162
    .local v17, "ok_listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v18, Lcom/perm/utils/VideoAlbumsHelper$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/perm/utils/VideoAlbumsHelper$8;-><init>(Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 171
    .local v18, "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v11, Lcom/perm/utils/VideoAlbumsHelper$9;

    move-object/from16 v14, p0

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v18}, Lcom/perm/utils/VideoAlbumsHelper$9;-><init>(I[ZLcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    sput-object v11, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    move-object/from16 v3, p0

    move-object v4, v15

    move-object v5, v13

    move-object v6, v2

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    .line 185
    invoke-static/range {v3 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->createAlbumsDialog(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroid/support/v7/app/AlertDialog;

    .line 186
    sget-object v3, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 187
    return-void
.end method

.method public static showAlbumsDialogWithCheck(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 3
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "owner_id"    # J
    .param p3, "video_id"    # J
    .param p5, "video_owner_id"    # J
    .param p7, "callback"    # Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    .line 109
    sget-wide v0, Lcom/perm/utils/VideoAlbumsHelper;->whoseVideoAlbums:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    .line 112
    sput-wide p1, Lcom/perm/utils/VideoAlbumsHelper;->whoseVideoAlbums:J

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/utils/VideoAlbumsHelper;->checked:Z

    .line 115
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/VideoAlbumsHelper;->getAlbumsByVideo(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 116
    return-void
.end method
