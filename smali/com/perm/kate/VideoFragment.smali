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

.field videoListAdapter:Lcom/perm/kate/VideoListAdapter;

.field videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

.field protected videoUploadCallback:Lcom/perm/kate/photoupload/VideoUploadCallback;

.field videos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/perm/kate/VideoFragment;->state:I

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/perm/kate/VideoFragment;->select_video:Z

    const-wide/16 v0, 0x14

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->page_size:Ljava/lang/Long;

    const-wide/16 v0, 0x28

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->page_size_load_more:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lcom/perm/kate/VideoFragment;->offset:J

    .line 134
    new-instance v0, Lcom/perm/kate/VideoFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VideoFragment$3;-><init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/perm/kate/VideoFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$5;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 233
    new-instance v0, Lcom/perm/kate/VideoFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$6;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    .line 287
    new-instance v0, Lcom/perm/kate/VideoFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$7;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 318
    new-instance v0, Lcom/perm/kate/VideoFragment$9;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VideoFragment$9;-><init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 451
    new-instance v0, Lcom/perm/kate/VideoFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$10;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->videoUploadCallback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    .line 468
    new-instance v0, Lcom/perm/kate/VideoFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$11;-><init>(Lcom/perm/kate/VideoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoFragment;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/VideoFragment;->filterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoFragment;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/VideoFragment;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/VideoFragment;->onFilterVideos(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/VideoFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/VideoFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->showVideoLinkDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->showMyVideo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->showSearchActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoFragment;)J
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->getAlbumIdForDb()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$402(Lcom/perm/kate/VideoFragment;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/perm/kate/VideoFragment;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/VideoFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/perm/kate/VideoFragment;->select_video:Z

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoFragment;JJ)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/VideoFragment;->returnSelectedVideo(JJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/VideoFragment;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/VideoFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/perm/kate/VideoFragment;->is_me:Z

    return p0
.end method

.method static synthetic access$900(Lcom/perm/kate/VideoFragment;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/VideoFragment;->checkIfLoadMoreRequired(II)V

    return-void
.end method

.method private addVideo(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 573
    new-instance v0, Lcom/perm/kate/VideoFragment$14;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/VideoFragment$14;-><init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 590
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 591
    new-instance v1, Lcom/perm/kate/VideoFragment$15;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/VideoFragment$15;-><init>(Lcom/perm/kate/VideoFragment;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 597
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkIfLoadMoreRequired(II)V
    .locals 1

    add-int/lit8 p2, p2, -0x2

    const/4 v0, 0x1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 301
    iget p1, p0, Lcom/perm/kate/VideoFragment;->state:I

    if-nez p1, :cond_1

    const-string p1, "Kate.VideoFragment"

    const-string p2, "Loading more"

    .line 302
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput v0, p0, Lcom/perm/kate/VideoFragment;->state:I

    .line 304
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->loadMore()V

    .line 305
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :cond_1
    return-void
.end method

.method private createHintDialog()Landroid/app/Dialog;
    .locals 4

    .line 282
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f058e

    .line 283
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private displayData()V
    .locals 10

    .line 191
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 193
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->getAlbumIdForDb()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchVideos(JJJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    const-string v0, "vf_fetchVideos"

    const/4 v1, 0x0

    .line 194
    invoke-static {v8, v9, v0, v1}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 196
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStates()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 197
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
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

    :goto_0
    return-void
.end method

.method private getAlbumIdForDb()J
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private loadMore()V
    .locals 1

    .line 310
    new-instance v0, Lcom/perm/kate/VideoFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$8;-><init>(Lcom/perm/kate/VideoFragment;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onFilterVideos(Ljava/lang/String;)V
    .locals 5

    .line 482
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 484
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 485
    iget-object p1, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 487
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-object v1, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 489
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Video;

    .line 490
    iget-object v4, v3, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 491
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object p1, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {p1, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 495
    iget-object p1, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/VideoFragment;->checkIfLoadMoreRequired(II)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 493
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/VideoFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/VideoFragment$4;-><init>(Lcom/perm/kate/VideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private returnSelectedVideo(JJ)V
    .locals 2

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "video_id"

    .line 227
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "owner_id"

    .line 228
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showHintDialog()V
    .locals 5

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hint_dialog_counter"

    const/4 v2, 0x0

    .line 270
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    .line 274
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    if-ne v2, v3, :cond_2

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->createHintDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method private showMyVideo()V
    .locals 4

    .line 558
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 559
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 560
    iget-wide v1, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    .line 561
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 562
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showSearchActivity()V
    .locals 3

    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 567
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 569
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showVideoLinkDialog()V
    .locals 5

    .line 534
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    const/4 v2, 0x0

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011d

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v3, "http://"

    .line 537
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 538
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0223

    .line 539
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/perm/kate/VideoFragment$13;

    invoke-direct {v4, p0, v1}, Lcom/perm/kate/VideoFragment$13;-><init>(Lcom/perm/kate/VideoFragment;Landroid/widget/EditText;)V

    const v1, 0x7f0f0398

    .line 540
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    .line 549
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showVideoUploadActivity(Landroid/net/Uri;)V
    .locals 6

    .line 410
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 412
    iget-wide v1, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const-string v3, "com.perm.kate.owner_id"

    .line 413
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 414
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 415
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 7

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    .line 362
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 364
    iget-wide v0, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const v2, 0x7f090400

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 366
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v3, -0x1

    iget-wide v5, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    mul-long v5, v5, v3

    invoke-virtual {v0, v1, v5, v6}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    .line 367
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f0f0030

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 369
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/VideoFragment;->is_me:Z

    :goto_0
    if-nez v0, :cond_1

    .line 371
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 420
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    const/4 v5, 0x1

    if-ne v5, v1, :cond_0

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/perm/kate/VideoFragment;->showVideoUploadActivity(Landroid/net/Uri;)V

    :cond_0
    if-ne v2, v4, :cond_1

    const/4 v5, 0x3

    if-ne v5, v1, :cond_1

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/VideoFragment;->displayData()V

    :cond_1
    const-wide/16 v5, 0x0

    if-ne v2, v4, :cond_3

    const/4 v7, 0x2

    if-ne v7, v1, :cond_3

    const-string v7, "uri"

    .line 428
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    const-string v8, "name"

    .line 429
    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v8, "desc"

    .line 430
    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 432
    iget-wide v8, v0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const/4 v12, 0x0

    cmp-long v13, v8, v5

    if-gez v13, :cond_2

    neg-long v8, v8

    .line 433
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    :cond_2
    move-object v8, v12

    :goto_0
    const-string v9, "who_look"

    .line 434
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v9, "who_make_comments"

    .line 435
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 436
    new-instance v9, Lcom/perm/kate/photoupload/VideoUploader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    iget-object v5, v0, Lcom/perm/kate/VideoFragment;->videoUploadCallback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-direct {v9, v15, v7, v12, v5}, Lcom/perm/kate/photoupload/VideoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/photoupload/VideoUploadCallback;)V

    const/4 v15, 0x0

    move-object v12, v8

    invoke-virtual/range {v9 .. v15}, Lcom/perm/kate/photoupload/VideoUploader;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    const v5, 0x7f0f057e

    .line 437
    invoke-virtual {v0, v5}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_3
    if-ne v2, v4, :cond_5

    const/4 v5, 0x4

    if-eq v5, v1, :cond_4

    const/4 v5, 0x5

    if-ne v5, v1, :cond_5

    :cond_4
    const-string v5, "video_id"

    const-wide/16 v6, 0x0

    .line 441
    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v8, "owner_id"

    .line 442
    invoke-virtual {v3, v8, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 443
    invoke-direct {v0, v5, v6}, Lcom/perm/kate/VideoFragment;->addVideo(Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_5
    if-ne v2, v4, :cond_6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_6
    return-void
.end method

.method onAlbums()V
    .locals 4

    .line 397
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    iget-wide v1, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 399
    iget-boolean v1, p0, Lcom/perm/kate/VideoFragment;->select_video:Z

    const-string v2, "select_video"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x6

    .line 400
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 117
    iget-object v0, p0, Lcom/perm/kate/VideoFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 98
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album_id"

    const-wide/16 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/perm/kate/VideoFragment;->album_id:Ljava/lang/Long;

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/VideoFragment;->select_video:Z

    .line 105
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/VideoFragment;->mid_long_value:J

    .line 106
    iget-wide v3, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/perm/kate/VideoFragment;->is_me:Z

    if-nez p1, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->showHintDialog()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c013a

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090132

    .line 73
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment;->filterText:Landroid/widget/EditText;

    .line 74
    iget-object p3, p0, Lcom/perm/kate/VideoFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0900be

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 76
    new-instance p3, Lcom/perm/kate/VideoFragment$1;

    invoke-direct {p3, p0}, Lcom/perm/kate/VideoFragment$1;-><init>(Lcom/perm/kate/VideoFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09021f

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    .line 82
    iget-object p3, p0, Lcom/perm/kate/VideoFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object p2, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/VideoFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    new-instance p2, Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/perm/kate/VideoListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    .line 85
    invoke-virtual {p2}, Lcom/perm/kate/VideoListAdapter;->showLikeCounts()V

    .line 86
    iget-object p2, p0, Lcom/perm/kate/VideoFragment;->lv_video_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    invoke-direct {p0}, Lcom/perm/kate/VideoFragment;->displayData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 89
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    sget-object p3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p3, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 393
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 390
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 381
    :sswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->uploadClick()V

    return v1

    .line 387
    :sswitch_2
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->onVideoSearch()V

    return v1

    .line 384
    :sswitch_3
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->onAlbums()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f09003c -> :sswitch_3
        0x7f0902be -> :sswitch_2
        0x7f090400 -> :sswitch_1
        0x7f09040a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 465
    invoke-virtual {p0}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    return-void
.end method

.method onVideoSearch()V
    .locals 3

    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_video"

    const/4 v2, 0x1

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method refreshOnUiThread()V
    .locals 3

    const/4 v0, 0x1

    .line 121
    iput v0, p0, Lcom/perm/kate/VideoFragment;->state:I

    const-wide/16 v1, 0x0

    .line 122
    iput-wide v1, p0, Lcom/perm/kate/VideoFragment;->offset:J

    .line 123
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 124
    new-instance v0, Lcom/perm/kate/VideoFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$2;-><init>(Lcom/perm/kate/VideoFragment;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public uploadClick()V
    .locals 6

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    iget-wide v1, p0, Lcom/perm/kate/VideoFragment;->owner_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 502
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045d

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00f7

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0183

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/VideoFragment$12;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/VideoFragment$12;-><init>(Lcom/perm/kate/VideoFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 529
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 530
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
