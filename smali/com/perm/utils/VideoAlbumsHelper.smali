.class public abstract Lcom/perm/utils/VideoAlbumsHelper;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"


# static fields
.field static albumDialog:Landroidx/appcompat/app/AlertDialog;

.field private static albums:Ljava/util/ArrayList;

.field private static checked:Z

.field static errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

.field static page_size:I

.field private static videoAlbums:Ljava/util/ArrayList;

.field private static whoseVideoAlbums:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/perm/utils/VideoAlbumsHelper;->checked:Z

    const/16 v0, 0x64

    .line 34
    sput v0, Lcom/perm/utils/VideoAlbumsHelper;->page_size:I

    const/4 v0, 0x0

    .line 132
    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroidx/appcompat/app/AlertDialog;

    .line 133
    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 16
    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;I)V
    .locals 0

    .line 16
    invoke-static/range {p0 .. p8}, Lcom/perm/utils/VideoAlbumsHelper;->getAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 0

    .line 16
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/VideoAlbumsHelper;->checkVideoAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .line 16
    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    sput-object p0, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 0

    .line 16
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V
    .locals 0

    .line 16
    invoke-static/range {p0 .. p10}, Lcom/perm/utils/VideoAlbumsHelper;->addRemoveToAlbum(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 16
    invoke-static/range {p0 .. p5}, Lcom/perm/utils/VideoAlbumsHelper;->createAlbumsDialog(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static addRemoveToAlbum(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V
    .locals 13

    .line 200
    new-instance v11, Lcom/perm/utils/VideoAlbumsHelper$10;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p0

    move-object/from16 v3, p10

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/perm/utils/VideoAlbumsHelper$10;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;J)V

    .line 219
    new-instance v12, Lcom/perm/utils/VideoAlbumsHelper$11;

    move-object v0, v12

    move/from16 v2, p9

    move-wide v3, p1

    move-wide/from16 v5, p7

    move-wide/from16 v7, p5

    move-wide/from16 v9, p3

    invoke-direct/range {v0 .. v11}, Lcom/perm/utils/VideoAlbumsHelper$11;-><init>(Lcom/perm/kate/BaseActivity;ZJJJJLcom/perm/kate/session/Callback;)V

    .line 228
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static checkVideoAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 10

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    sget-boolean v0, Lcom/perm/utils/VideoAlbumsHelper;->checked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 122
    invoke-static/range {v1 .. v9}, Lcom/perm/utils/VideoAlbumsHelper;->getAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;I)V

    return-void

    .line 125
    :cond_1
    new-instance v9, Lcom/perm/utils/VideoAlbumsHelper$5;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/perm/utils/VideoAlbumsHelper$5;-><init>(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static createAlbumsDialog(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 190
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f0042

    .line 191
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f0f0086

    .line 193
    invoke-virtual {v0, p0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static getAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;I)V
    .locals 12

    .line 37
    new-instance v11, Lcom/perm/utils/VideoAlbumsHelper$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/perm/utils/VideoAlbumsHelper$1;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;I)V

    .line 65
    new-instance v6, Lcom/perm/utils/VideoAlbumsHelper$2;

    move-object v0, v6

    move-wide v2, p1

    move/from16 v4, p8

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/perm/utils/VideoAlbumsHelper$2;-><init>(Lcom/perm/kate/BaseActivity;JILcom/perm/kate/session/Callback;)V

    .line 72
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 73
    sput-boolean v0, Lcom/perm/utils/VideoAlbumsHelper;->checked:Z

    return-void
.end method

.method private static getAlbumsByVideo(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 11

    .line 77
    new-instance v10, Lcom/perm/utils/VideoAlbumsHelper$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/perm/utils/VideoAlbumsHelper$3;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 95
    new-instance v9, Lcom/perm/utils/VideoAlbumsHelper$4;

    move-object v0, v9

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/perm/utils/VideoAlbumsHelper$4;-><init>(Lcom/perm/kate/BaseActivity;JJJLcom/perm/kate/session/Callback;)V

    .line 101
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getUploadedAlbum(Lcom/perm/kate/BaseActivity;)Lcom/perm/kate/api/AudioAlbum;
    .locals 3

    .line 28
    new-instance v0, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    const-wide/16 v1, -0x1

    .line 29
    iput-wide v1, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    const v1, 0x7f0f0580

    .line 30
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    return-object v0
.end method

.method private static showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 21

    move-object/from16 v0, p7

    .line 135
    sget-object v1, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 136
    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 137
    new-array v10, v3, [Z

    .line 138
    new-array v2, v3, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 140
    sget-object v5, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/AudioAlbum;

    iget-object v5, v5, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 141
    sget-object v5, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v5, v5, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    aput-wide v5, v2, v4

    .line 142
    sget-object v5, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 143
    sget-object v5, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    sget-object v6, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v6, v6, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v10, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_1
    new-instance v20, Lcom/perm/utils/VideoAlbumsHelper$6;

    move-object/from16 v11, v20

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    move-wide/from16 v17, p5

    move-object/from16 v19, v2

    invoke-direct/range {v11 .. v19}, Lcom/perm/utils/VideoAlbumsHelper$6;-><init>(Lcom/perm/kate/BaseActivity;JJJ[J)V

    .line 151
    new-instance v11, Lcom/perm/utils/VideoAlbumsHelper$7;

    invoke-direct {v11, v0}, Lcom/perm/utils/VideoAlbumsHelper$7;-><init>(Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 161
    new-instance v12, Lcom/perm/utils/VideoAlbumsHelper$8;

    invoke-direct {v12, v0}, Lcom/perm/utils/VideoAlbumsHelper$8;-><init>(Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 170
    new-instance v0, Lcom/perm/utils/VideoAlbumsHelper$9;

    move-object v2, v0

    move-object v4, v10

    move-object/from16 v5, p0

    move-object v6, v1

    move-object/from16 v7, v20

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Lcom/perm/utils/VideoAlbumsHelper$9;-><init>(I[ZLcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    move-object/from16 p1, v1

    move-object/from16 p2, v10

    move-object/from16 p3, v20

    move-object/from16 p4, v11

    move-object/from16 p5, v12

    .line 184
    invoke-static/range {p0 .. p5}, Lcom/perm/utils/VideoAlbumsHelper;->createAlbumsDialog(Lcom/perm/kate/BaseActivity;[Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albumDialog:Landroidx/appcompat/app/AlertDialog;

    .line 185
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showAlbumsDialogWithCheck(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 3

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->albums:Ljava/util/ArrayList;

    .line 108
    sget-wide v0, Lcom/perm/utils/VideoAlbumsHelper;->whoseVideoAlbums:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/VideoAlbumsHelper;->videoAlbums:Ljava/util/ArrayList;

    .line 111
    sput-wide p1, Lcom/perm/utils/VideoAlbumsHelper;->whoseVideoAlbums:J

    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/perm/utils/VideoAlbumsHelper;->checked:Z

    .line 114
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/VideoAlbumsHelper;->getAlbumsByVideo(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method
