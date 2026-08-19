.class public Lcom/perm/kate/PhotoList;
.super Ljava/lang/Object;
.source "PhotoList.java"


# instance fields
.field aid:J

.field album_owner_id:J

.field callback:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field listener:Lcom/perm/utils/SimpleListener;

.field photos:Ljava/util/ArrayList;

.field rev:Z

.field state:I


# direct methods
.method public static synthetic $r8$lambda$HbrEoFS71_XtqmZs67w0h1_31jU(Lcom/perm/kate/PhotoList;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoList;->lambda$loadMore$0(Lcom/perm/kate/BaseActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HhzNQA5jfC7bedPfpUFMGb6iaGs(Lcom/perm/kate/PhotoList;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoList;->lambda$refreshInThread$1(Lcom/perm/kate/BaseActivity;)V

    return-void
.end method

.method public constructor <init>(JJLcom/perm/utils/SimpleListener;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/perm/kate/PhotoList;->state:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/perm/kate/PhotoList$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/PhotoList$1;-><init>(Lcom/perm/kate/PhotoList;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoList;->callback:Lcom/perm/kate/session/Callback;

    .line 103
    new-instance v0, Lcom/perm/kate/PhotoList$2;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/PhotoList$2;-><init>(Lcom/perm/kate/PhotoList;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoList;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 28
    iput-wide p1, p0, Lcom/perm/kate/PhotoList;->album_owner_id:J

    .line 29
    iput-wide p3, p0, Lcom/perm/kate/PhotoList;->aid:J

    .line 30
    iput-object p5, p0, Lcom/perm/kate/PhotoList;->listener:Lcom/perm/utils/SimpleListener;

    .line 31
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/PhotoList;->listener:Lcom/perm/utils/SimpleListener;

    invoke-virtual {p1, p2}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadMore$0(Lcom/perm/kate/BaseActivity;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotoList;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0, v0, v1, p1}, Lcom/perm/kate/PhotoList;->downloadPhotos(Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$refreshInThread$1(Lcom/perm/kate/BaseActivity;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/perm/kate/PhotoList;->callback:Lcom/perm/kate/session/Callback;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/perm/kate/PhotoList;->downloadPhotos(Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method downloadPhotos(Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 48
    iget-wide v0, p0, Lcom/perm/kate/PhotoList;->aid:J

    const/16 v2, 0x64

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-wide/16 v2, -0x2710

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0, p1, v7, p2, p3}, Lcom/perm/kate/session/Session;->getNewPhotoTags(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x2328

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 51
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v0, p0, Lcom/perm/kate/PhotoList;->album_owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v0, p0, Lcom/perm/kate/PhotoList;->rev:Z

    move-object v5, p1

    move-object v6, v7

    move v7, v0

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/session/Session;->getUserPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x3e8

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 53
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v0, p0, Lcom/perm/kate/PhotoList;->album_owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v0, 0x1

    move-object v5, p1

    move-object v6, v7

    move v7, v0

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/session/Session;->getAllPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 55
    :cond_2
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v0, p0, Lcom/perm/kate/PhotoList;->album_owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Lcom/perm/kate/PhotoList;->aid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-boolean v8, p0, Lcom/perm/kate/PhotoList;->rev:Z

    move-object v6, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/perm/kate/session/Session;->getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method fetchPhotos()V
    .locals 10

    .line 37
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 39
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/PhotoList;->aid:J

    iget-wide v4, p0, Lcom/perm/kate/PhotoList;->album_owner_id:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchPhotos(JJJ)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    const-string v0, "pl_getPhotos"

    const/4 v1, 0x0

    .line 40
    invoke-static {v8, v9, v0, v1}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method loadMore(Lcom/perm/kate/BaseActivity;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/perm/kate/PhotoList;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/perm/kate/PhotoList;->state:I

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/PhotoList;Lcom/perm/kate/BaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method refreshInThread(Lcom/perm/kate/BaseActivity;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/perm/kate/PhotoList;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lcom/perm/kate/PhotoList;->state:I

    .line 67
    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/PhotoList;Lcom/perm/kate/BaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
