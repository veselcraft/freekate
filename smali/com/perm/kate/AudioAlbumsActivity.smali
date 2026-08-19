.class public Lcom/perm/kate/AudioAlbumsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AudioAlbumsActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/AudioAlbumsAdapter;

.field private audio_ids:Ljava/util/ArrayList;

.field private btn_clear:Landroid/widget/ImageButton;

.field private callback:Lcom/perm/kate/session/Callback;

.field private count:I

.field private delete_callback:Lcom/perm/kate/session/Callback;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private is_move:Z

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private loaded_albums:Ljava/util/ArrayList;

.field private loadmore_callback:Lcom/perm/kate/session/Callback;

.field private longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private lv_audio_list:Landroid/widget/ListView;

.field private owner_id:Ljava/lang/Long;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private select_audio:Z

.field private state:I


# direct methods
.method public static synthetic $r8$lambda$-Iedc7dduNslmZHlr8OzwMLst1A(Lcom/perm/kate/AudioAlbumsActivity;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/AudioAlbumsActivity;->lambda$moveToAlbum$0(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    const/16 v0, 0x32

    .line 36
    iput v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->count:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->select_audio:Z

    .line 42
    iput-boolean v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    .line 126
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumsActivity$3;-><init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 156
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$4;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 223
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$5;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 266
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumsActivity$7;-><init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    .line 275
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$8;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 304
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumsActivity$10;-><init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loadmore_callback:Lcom/perm/kate/session/Callback;

    .line 334
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$11;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioAlbumsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->filterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/AudioAlbumsActivity;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioAlbumsActivity;->showAudioAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/AudioAlbumsActivity;J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioAlbumsActivity;->deleteAudioAlbum(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/AudioAlbumsActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->refresh()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/AudioAlbumsActivity;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioAlbumsActivity;->checkIfLoadMoreRequired(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loadmore_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/AudioAlbumsActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioAlbumsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->count:I

    return p0
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/perm/kate/AudioAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioAlbumsActivity;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioAlbumsActivity;->onFilterAlbums(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/perm/kate/AudioAlbumsActivity;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/AudioAlbumsActivity;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    return p0
.end method

.method static synthetic access$800(Lcom/perm/kate/AudioAlbumsActivity;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->select_audio:Z

    return p0
.end method

.method static synthetic access$900(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/AudioAlbumsActivity;->audio_ids:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkIfLoadMoreRequired(II)V
    .locals 0

    add-int/lit8 p2, p2, -0x2

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 288
    iget p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    if-nez p1, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->loadMore()V

    :cond_1
    return-void
.end method

.method private deleteAudioAlbum(J)V
    .locals 1

    .line 256
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/AudioAlbumsActivity$6;-><init>(Lcom/perm/kate/AudioAlbumsActivity;J)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayInitialData()V
    .locals 6

    const/4 v0, 0x1

    .line 88
    :try_start_0
    new-instance v1, Lcom/perm/kate/AudioAlbumsAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/AudioAlbumsAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    .line 89
    iput-boolean v0, v1, Lcom/perm/kate/AudioAlbumsAdapter;->show_ava:Z

    .line 90
    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 92
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchAudioAlbums(J)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "aaa_fetchAudioAlbums"

    const/4 v5, 0x0

    .line 93
    invoke-static {v1, v2, v4, v5}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 94
    invoke-direct {p0, v3}, Lcom/perm/kate/AudioAlbumsActivity;->makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    invoke-virtual {v2, v1}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 97
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$moveToAlbum$0(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 9

    .line 373
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "audio_owner_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_0
    new-instance v7, Lcom/perm/kate/AudioAlbumsActivity$12;

    invoke-direct {v7, p0, p0}, Lcom/perm/kate/AudioAlbumsActivity$12;-><init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 383
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 384
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->moveToAudioAlbum(Ljava/util/ArrayList;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 385
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    const/4 v0, 0x1

    .line 293
    iput v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    .line 294
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 295
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$9;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 107
    iget-object v3, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 108
    iget-boolean v1, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    if-nez v1, :cond_1

    .line 110
    new-instance v1, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v1}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    const-wide/16 v2, -0x2

    .line 111
    iput-wide v2, v1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    const v2, 0x7f0f0420

    .line 112
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v1}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    const-wide/16 v2, -0x3

    .line 116
    iput-wide v2, v1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    const v2, 0x7f0f0271

    .line 117
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method private onFilterAlbums(Ljava/lang/String;)V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/AudioAlbumsActivity;->makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 353
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/AudioAlbum;

    .line 355
    iget-object v3, v2, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    invoke-virtual {p1, v0}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private refresh()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    .line 77
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$2;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showAudioAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/AudioAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string v1, "com.perm.kate.album_id"

    .line 200
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.perm.kate.album_title"

    .line 201
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string p2, "com.perm.kate.is_edit"

    .line 202
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    const-string p2, "com.perm.kate.owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0xa

    .line 205
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1f4

    const v3, 0x7f0f0504

    .line 181
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method moveToAlbum(Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/AudioAlbumsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/perm/kate/AudioAlbumsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/AudioAlbumsActivity;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 386
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 210
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v1, 0xa

    if-ne v1, p1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->refresh()V

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 p2, 0xb

    if-ne p2, p1, :cond_1

    .line 215
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002e

    .line 50
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0042

    .line 51
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "audio_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->audio_ids:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_move"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "select_audio"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->select_audio:Z

    const p1, 0x7f09020a

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p1, 0x7f090132

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->filterText:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0900be

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 64
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$1;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->displayInitialData()V

    .line 71
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->refresh()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 173
    invoke-virtual {p0, p1}, Lcom/perm/kate/AudioAlbumsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 365
    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->filterText:Landroid/widget/EditText;

    .line 366
    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 367
    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    .line 368
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 189
    invoke-direct {p0, p1, p1}, Lcom/perm/kate/AudioAlbumsActivity;->showAudioAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V

    return v1
.end method
