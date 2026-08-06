.class public Lcom/perm/kate/VideoFragment;
.super Lcom/perm/kate/BaseFragment;
.source "VideoFragment.java"


# instance fields
.field album_id:Ljava/lang/Long;

.field private btn_clear:Landroid/widget/ImageButton;

.field callback:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private is_me:Z

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_video_list:Landroid/widget/ListView;

.field private mid_long_value:J

.field offset:J

.field private owner_id:J

.field page_size:Ljava/lang/Long;

.field page_size_load_more:Ljava/lang/Long;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private select_video:Z

.field private state:I

.field private user_videos:Z

.field videoListAdapter:Lcom/perm/kate/VideoListAdapter;

.field videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

.field protected videoUploadCallback:Lcom/perm/kate/photoupload/VideoUploadCallback;

.field videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/VideoFragment;->state:I

    .line 60
    iput-boolean v1, p0, Lcom/perm/kate/VideoFragment;->user_videos:Z

    .line 61
    iput-boolean v1, p0, Lcom/perm/kate/VideoFragment;->select_video:Z

    .line 62
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->page_size:Ljava/lang/Long;

    .line 63
    const-wide/16 v0, 0x28

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->page_size_load_more:Ljava/lang/Long;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/VideoFragment;->offset:J

    .line 136
    new-instance v0, Lcom/perm/kate/VideoFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VideoFragment$3;-><init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/perm/kate/VideoFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$5;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 229
    new-instance v0, Lcom/perm/kate/VideoFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$6;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    .line 277
    new-instance v0, Lcom/perm/kate/VideoFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$7;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 314
    new-instance v0, Lcom/perm/kate/VideoFragment$9;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VideoFragment$9;-><init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 452
    new-instance v0, Lcom/perm/kate/VideoFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$10;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->videoUploadCallback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    .line 469
    new-instance v0, Lcom/perm/kate/VideoFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$11;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->filterText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/perm/kate/VideoFragment;->user_videos:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/VideoFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/VideoFragment;->onFilterVideos(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/VideoFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->showVideoLinkDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->showMyVideo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->showSearchActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->getAlbumIdForDb()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$502(Lcom/perm/kate/VideoFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/perm/kate/VideoFragment;->state:I

    return p1
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/perm/kate/VideoFragment;->select_video:Z

    return v0
.end method

.method static synthetic access$700(Lcom/perm/kate/VideoFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/VideoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/perm/kate/VideoFragment;->is_me:Z

    return v0
.end method

.method static synthetic access$900(Lcom/perm/kate/VideoFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/VideoFragment;->checkIfLoadMoreRequired(II)V

    return-void
.end method

.method private addVideo(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;

    .prologue
    .line 573
    new-instance v0, Lcom/perm/kate/VideoFragment$14;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VideoFragment$14;-><init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V

    .line 590
    .local v0, "callback_add":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoFragment;->showProgressBar(Z)V

    .line 591
    new-instance v1, Lcom/perm/kate/VideoFragment$15;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/VideoFragment$15;-><init>(Lcom/perm/kate/VideoFragment;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 597
    invoke-virtual {v1}, Lcom/perm/kate/VideoFragment$15;->start()V

    .line 598
    return-void
.end method

.method private checkIfLoadMoreRequired(II)V
    .locals 4
    .param p1, "lstVisible"    # I
    .param p2, "totalCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 291
    iget-boolean v2, p0, Lcom/perm/kate/VideoFragment;->user_videos:Z

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    add-int/lit8 v2, p2, -0x2

    if-lt p1, v2, :cond_2

    move v0, v1

    .line 294
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/perm/kate/VideoFragment;->state:I

    if-nez v2, :cond_0

    .line 295
    const-string v2, "Kate.VideoFragment"

    const-string v3, "Loading more"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput v1, p0, Lcom/perm/kate/VideoFragment;->state:I

    .line 297
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->loadMore()V

    .line 298
    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoFragment;->showProgressBar(Z)V

    goto :goto_0

    .line 293
    .end local v0    # "loadMore":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createHintDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f070509

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private displayData()V
    .locals 8

    .prologue
    .line 193
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 194
    .local v4, "account_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->getAlbumIdForDb()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchVideos(JJJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    .line 196
    iget-object v1, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStates()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 197
    iget-object v1, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v4    # "account_id":J
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 200
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getAlbumIdForDb()J
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/perm/kate/VideoFragment;->user_videos:Z

    if-eqz v0, :cond_0

    .line 170
    const-wide/16 v0, -0x4

    .line 173
    :goto_0
    return-wide v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 172
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/perm/kate/VideoFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$8;-><init>(Lcom/perm/kate/VideoFragment;)V

    .line 311
    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment$8;->start()V

    .line 312
    return-void
.end method

.method private onFilterVideos(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 486
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v3, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 488
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v0, "filtred_videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    iget-object v3, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    monitor-enter v3

    .line 490
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    .line 491
    .local v1, "v":Lcom/perm/kate/api/Video;
    iget-object v4, v1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 492
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 494
    .end local v1    # "v":Lcom/perm/kate/api/Video;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v2, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 496
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/VideoFragment;->checkIfLoadMoreRequired(II)V

    goto :goto_0
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/VideoFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/VideoFragment$4;-><init>(Lcom/perm/kate/VideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showHintDialog()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 258
    const-string v2, "hint_dialog_counter"

    .line 259
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 260
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "hint_dialog_counter"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "counter":I
    if-lt v0, v6, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 264
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "hint_dialog_counter"

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_0

    .line 268
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->createHintDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showMyVideo()V
    .locals 4

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 559
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 560
    const-string v1, "com.perm.kate.user_id"

    iget-wide v2, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 561
    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 562
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/VideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 563
    return-void
.end method

.method private showSearchActivity()V
    .locals 3

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 568
    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 569
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/VideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 570
    return-void
.end method

.method private showVideoLinkDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 536
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f03001d

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 537
    .local v1, "captcha_view":Landroid/view/View;
    const v4, 0x7f0e006b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 538
    .local v2, "et_message":Landroid/widget/EditText;
    const-string v4, "http://"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 539
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f0701c7

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070334

    new-instance v6, Lcom/perm/kate/VideoFragment$13;

    invoke-direct {v6, p0, v2}, Lcom/perm/kate/VideoFragment$13;-><init>(Lcom/perm/kate/VideoFragment;Landroid/widget/EditText;)V

    .line 541
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07015d

    .line 550
    invoke-virtual {v4, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 551
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 552
    return-void
.end method

.method private showVideoUploadActivity(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 409
    iget-wide v2, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 410
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 411
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 412
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/VideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 413
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0e0388

    const/4 v8, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 357
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0f0008

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 359
    iget-wide v2, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 361
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, -0x1

    iget-wide v6, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    mul-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    .line 362
    .local v1, "show_upload":Z
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f07001d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 365
    :goto_0
    if-nez v1, :cond_0

    .line 366
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    :cond_0
    iget-boolean v2, p0, Lcom/perm/kate/VideoFragment;->user_videos:Z

    if-eqz v2, :cond_1

    .line 368
    const v2, 0x7f0e01ce

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 369
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 364
    .end local v1    # "show_upload":Z
    :cond_2
    iget-boolean v1, p0, Lcom/perm/kate/VideoFragment;->is_me:Z

    .restart local v1    # "show_upload":Z
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 417
    invoke-super/range {p0 .. p3}, Lcom/perm/kate/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 418
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/VideoFragment;->showVideoUploadActivity(Landroid/net/Uri;)V

    .line 421
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_2

    .line 422
    const-string v2, "album_id"

    const-wide/16 v12, -0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, -0x2

    cmp-long v2, v12, v14

    if-nez v2, :cond_1

    .line 424
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    .line 425
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/VideoFragment;->displayData()V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    .line 429
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v2, v0, :cond_3

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/VideoFragment;->displayData()V

    .line 432
    :cond_3
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v2, v0, :cond_5

    .line 433
    const-string v2, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 434
    .local v10, "uri":Landroid/net/Uri;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "name":Ljava/lang/String;
    const-string v2, "desc"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "desc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 437
    .local v5, "gid":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-gez v2, :cond_4

    .line 438
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/perm/kate/VideoFragment;->owner_id:J

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 439
    :cond_4
    const-string v2, "who_look"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, "who_look":Ljava/lang/String;
    const-string v2, "who_make_comments"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v7, "who_make_comments":Ljava/lang/String;
    new-instance v2, Lcom/perm/kate/photoupload/VideoUploader;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/VideoFragment;->videoUploadCallback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-direct {v2, v8, v10, v12, v13}, Lcom/perm/kate/photoupload/VideoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/photoupload/VideoUploadCallback;)V

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/photoupload/VideoUploader;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 442
    const v2, 0x7f0704f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/VideoFragment;->displayToast(I)V

    .line 444
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "desc":Ljava/lang/String;
    .end local v5    # "gid":Ljava/lang/Long;
    .end local v6    # "who_look":Ljava/lang/String;
    .end local v7    # "who_make_comments":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    const/4 v2, 0x4

    move/from16 v0, p1

    if-eq v2, v0, :cond_6

    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v2, v0, :cond_7

    .line 446
    :cond_6
    const-string v2, "video_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 447
    .local v11, "video_id":Ljava/lang/Long;
    const-string v2, "owner_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 448
    .local v9, "owner_id":Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9}, Lcom/perm/kate/VideoFragment;->addVideo(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 450
    .end local v9    # "owner_id":Ljava/lang/Long;
    .end local v11    # "video_id":Ljava/lang/Long;
    :cond_7
    return-void
.end method

.method onAlbums()V
    .locals 4

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 397
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/VideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 398
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 116
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.user_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    .line 102
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.user_videos"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/VideoFragment;->user_videos:Z

    .line 103
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.select_video"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/VideoFragment;->select_video:Z

    .line 104
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    .line 105
    iget-wide v2, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/perm/kate/VideoFragment;->is_me:Z

    .line 107
    if-nez p1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->showHintDialog()V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const v2, 0x7f03011a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e0090

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/VideoFragment;->filterText:Landroid/widget/EditText;

    .line 75
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->filterText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/perm/kate/VideoFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    const v2, 0x7f0e0091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/VideoFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 77
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->btn_clear:Landroid/widget/ImageButton;

    new-instance v3, Lcom/perm/kate/VideoFragment$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/VideoFragment$1;-><init>(Lcom/perm/kate/VideoFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v2, 0x7f0e034f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    .line 83
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/VideoFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/VideoFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 85
    new-instance v2, Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/perm/kate/VideoListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    .line 86
    iget-boolean v2, p0, Lcom/perm/kate/VideoFragment;->user_videos:Z

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v2}, Lcom/perm/kate/VideoListAdapter;->showLikeCounts()V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->displayData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 391
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 379
    :sswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->uploadClick()V

    goto :goto_0

    .line 382
    :sswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->onAlbums()V

    goto :goto_0

    .line 385
    :sswitch_2
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->onVideoSearch()V

    goto :goto_0

    .line 388
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 377
    :sswitch_data_0
    .sparse-switch
        0x7f0e01ce -> :sswitch_1
        0x7f0e0387 -> :sswitch_2
        0x7f0e0388 -> :sswitch_0
        0x7f0e03a9 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    .line 467
    return-void
.end method

.method onVideoSearch()V
    .locals 3

    .prologue
    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoFragment;->startActivity(Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method refreshOnUiThread()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    iput v2, p0, Lcom/perm/kate/VideoFragment;->state:I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/VideoFragment;->offset:J

    .line 122
    invoke-virtual {p0, v2}, Lcom/perm/kate/VideoFragment;->showProgressBar(Z)V

    .line 123
    new-instance v0, Lcom/perm/kate/VideoFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$2;-><init>(Lcom/perm/kate/VideoFragment;)V

    .line 131
    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment$2;->start()V

    .line 132
    return-void
.end method

.method public uploadClick()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget-wide v4, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 503
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d2

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_0
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700b4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070115

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/VideoFragment$12;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/VideoFragment$12;-><init>(Lcom/perm/kate/VideoFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 529
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 530
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 531
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 532
    return-void
.end method
