.class public Lcom/perm/kate/VideoMenu;
.super Ljava/lang/Object;
.source "VideoMenu.java"


# instance fields
.field activity:Lcom/perm/kate/BaseActivity;

.field callback:Lcom/perm/kate/VideoMenuCallback;

.field fragment:Lcom/perm/kate/BaseFragment;

.field me:J


# direct methods
.method public static synthetic $r8$lambda$n-D_0MY1qkraJuocTn53R4Csy5c(Lcom/perm/kate/VideoMenu;JJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/VideoMenu;->lambda$addToFaves$0(JJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uQclZw5TisZOhAAmbjSbWAQNcrw(Lcom/perm/kate/VideoMenu;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/VideoMenu;->lambda$removeFromFaves$1(JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/VideoMenu;->me:J

    .line 55
    iput-object p1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    .line 56
    iput-object p2, p0, Lcom/perm/kate/VideoMenu;->fragment:Lcom/perm/kate/BaseFragment;

    .line 57
    iput-object p3, p0, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/VideoMenu;->confirmDeleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoMenu;JJLjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/VideoMenu;->sendToFriend(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoMenu;JJ)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/VideoMenu;->showEditActivity(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoMenu;JJJ)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/perm/kate/VideoMenu;->showAlbumsDialogWithCheck(JJJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoMenu;JJ)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/VideoMenu;->showVideoDetailsActivity(JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/VideoMenu;JJLjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/VideoMenu;->addToFaves(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoMenu;JJ)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/VideoMenu;->removeFromFaves(JJ)V

    return-void
.end method

.method private addToFaves(JJLjava/lang/String;)V
    .locals 9

    .line 365
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/perm/kate/VideoMenu$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/VideoMenu$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/VideoMenu;JJLjava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 380
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private confirmDeleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)V
    .locals 7

    .line 272
    new-instance v6, Lcom/perm/kate/VideoMenu$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/VideoMenu$5;-><init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;J)V

    .line 278
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f01d8

    .line 279
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    .line 280
    invoke-virtual {p1, p2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 p3, 0x0

    .line 281
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 283
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 284
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$addToFaves$0(JJLjava/lang/String;)V
    .locals 9

    .line 366
    new-instance v7, Lcom/perm/kate/VideoMenu$9;

    iget-object v2, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/VideoMenu$9;-><init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;JJ)V

    .line 377
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 378
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v8, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->faveAddVideo(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 379
    iget-object p1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private synthetic lambda$removeFromFaves$1(JJ)V
    .locals 8

    .line 385
    new-instance v7, Lcom/perm/kate/VideoMenu$10;

    iget-object v2, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/VideoMenu$10;-><init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;JJ)V

    .line 395
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 396
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v6, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->faveRemoveVideo(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 397
    iget-object p1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private removeFromFaves(JJ)V
    .locals 8

    .line 384
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/perm/kate/VideoMenu$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/VideoMenu$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/VideoMenu;JJ)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendToFriend(JJLjava/lang/String;)V
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 322
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 323
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 324
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 325
    iget-object p3, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-class p4, Lcom/perm/kate/MembersActivity;

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p3, 0x0

    const-string p4, "com.perm.kate.only_members"

    .line 326
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p3, 0x1

    const-string p4, "com.perm.kate.new_message"

    .line 327
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "com.perm.kate.photo_attachment"

    .line 328
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object p2, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showAlbumsDialogWithCheck(JJJ)V
    .locals 8

    .line 345
    new-instance v7, Lcom/perm/kate/VideoMenu$8;

    invoke-direct {v7, p0}, Lcom/perm/kate/VideoMenu$8;-><init>(Lcom/perm/kate/VideoMenu;)V

    .line 354
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialogWithCheck(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method

.method private showEditActivity(JJ)V
    .locals 3

    .line 333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.video_id"

    .line 335
    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p3, "com.perm.kate.owner_id"

    .line 336
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.perm.kate.is_edit"

    const/4 p2, 0x1

    .line 337
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    iget-object p1, p0, Lcom/perm/kate/VideoMenu;->fragment:Lcom/perm/kate/BaseFragment;

    const/4 p2, 0x3

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private showVideoDetailsActivity(JJ)V
    .locals 3

    .line 358
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.video_id"

    .line 359
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.perm.kate.owner_id"

    .line 360
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 361
    iget-object p1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected AddVideo(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3

    .line 248
    new-instance v0, Lcom/perm/kate/VideoMenu$3;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VideoMenu$3;-><init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;)V

    .line 262
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 263
    new-instance v1, Lcom/perm/kate/VideoMenu$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/VideoMenu$4;-><init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 268
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected DeleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)V
    .locals 8

    .line 288
    new-instance v6, Lcom/perm/kate/VideoMenu$6;

    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v6, p0, v0}, Lcom/perm/kate/VideoMenu$6;-><init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;)V

    .line 308
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteVideo(JJ)Z

    .line 309
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/perm/kate/VideoMenuCallback;->beforeDelete(J)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 312
    new-instance v7, Lcom/perm/kate/VideoMenu$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/VideoMenu$7;-><init>(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;JLcom/perm/kate/session/Callback;)V

    .line 317
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Boolean;Lcom/perm/kate/api/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v14, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, v14, Lcom/perm/kate/VideoMenu;->me:J

    :goto_0
    move-wide v11, v0

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f03e8

    const/16 v7, 0x8

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f007e

    const/16 v7, 0xa

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    if-eqz p8, :cond_2

    .line 66
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f012a

    invoke-direct {v0, v1, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_1
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0129

    const/4 v7, 0x2

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    :goto_1
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f05a2

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f022e

    const/4 v8, 0x7

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f023a

    const/16 v8, 0xb

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01db

    const/16 v8, 0x9

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f050e

    const/16 v8, 0x1d

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p7, :cond_3

    .line 76
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    :cond_3
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01ec

    const/16 v8, 0xc

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0042

    const/16 v8, 0xe

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez p7, :cond_5

    .line 80
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    :cond_5
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f00ba

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez p7, :cond_7

    .line 83
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f022d

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0038

    const/16 v8, 0x1e

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_7
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f03e9

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p6, :cond_9

    .line 89
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->isVideoCached(JJ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 90
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0039

    const/16 v7, 0x19

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    :cond_8
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f042b

    const/16 v8, 0x1a

    invoke-direct {v0, v1, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStatus(JJ)I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 94
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0449

    const/16 v7, 0x1b

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_9
    :goto_2
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0128

    const/16 v7, 0xd

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v0, v16, v5

    if-eqz v0, :cond_a

    .line 100
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01d7

    const/16 v7, 0x17

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez p9, :cond_b

    .line 102
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0186

    const/16 v7, 0x21

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 104
    :cond_b
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f029b

    const/16 v7, 0x22

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_3
    new-instance v13, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, v14, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v13, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v9, Lcom/perm/kate/VideoMenu$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p13

    move-object/from16 v18, v9

    move-object/from16 v9, p12

    move-object/from16 v19, v10

    move-object/from16 v10, p14

    move-object/from16 v20, v13

    move-object/from16 v13, p11

    move-wide/from16 v14, v16

    invoke-direct/range {v0 .. v15}, Lcom/perm/kate/VideoMenu$1;-><init>(Lcom/perm/kate/VideoMenu;Ljava/util/ArrayList;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/perm/kate/api/Video;J)V

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 205
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected setLike(ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V
    .locals 16

    .line 223
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 224
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v9, 0x6

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    move-object/from16 v0, p0

    .line 225
    iget-object v1, v0, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/perm/kate/VideoMenuCallback;->userLikesChanged(JJZ)V

    .line 227
    :cond_0
    new-instance v1, Lcom/perm/kate/VideoMenu$2;

    move-object v10, v1

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/perm/kate/VideoMenu$2;-><init>(Lcom/perm/kate/VideoMenu;ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V

    .line 235
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected showLikes(JJ)V
    .locals 3

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.item_id"

    .line 241
    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p3, "com.perm.kate.owner_id"

    .line 242
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.perm.kate.item_type"

    const-string p2, "video"

    .line 243
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object p1, p0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
