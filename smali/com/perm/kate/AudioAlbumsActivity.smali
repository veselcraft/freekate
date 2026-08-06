.class public Lcom/perm/kate/AudioAlbumsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AudioAlbumsActivity.java"


# instance fields
.field private aid:Ljava/lang/Long;

.field private callback:Lcom/perm/kate/session/Callback;

.field private count:I

.field private delete_callback:Lcom/perm/kate/session/Callback;

.field private is_move:Z

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private loaded_albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/AudioAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private loadmore_callback:Lcom/perm/kate/session/Callback;

.field private longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private lv_audio_list:Landroid/widget/ListView;

.field private owner_id:Ljava/lang/Long;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    .line 32
    const/16 v0, 0x14

    iput v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->count:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    .line 112
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumsActivity$2;-><init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 141
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$3;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 204
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$4;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 249
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumsActivity$6;-><init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    .line 259
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$7;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 288
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AudioAlbumsActivity$9;-><init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loadmore_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioAlbumsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->count:I

    return v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/AudioAlbumsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioAlbumsActivity;->deleteAudioAlbum(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/AudioAlbumsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->refresh()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/AudioAlbumsActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioAlbumsActivity;->checkIfLoadMoreRequired(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loadmore_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/AudioAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioAlbumsActivity;->makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioAlbumsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/perm/kate/AudioAlbumsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/AudioAlbumsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    return v0
.end method

.method static synthetic access$800(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->aid:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/AudioAlbumsActivity;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioAlbumsActivity;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioAlbumsActivity;->showAudioAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method private checkIfLoadMoreRequired(II)V
    .locals 2
    .param p1, "lstVisible"    # I
    .param p2, "totalCount"    # I

    .prologue
    .line 271
    add-int/lit8 v1, p2, -0x2

    if-lt p1, v1, :cond_1

    const/4 v0, 0x1

    .line 272
    .local v0, "loadMore":Z
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    if-nez v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->loadMore()V

    .line 274
    :cond_0
    return-void

    .line 271
    .end local v0    # "loadMore":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteAudioAlbum(J)V
    .locals 1
    .param p1, "album_id"    # J

    .prologue
    .line 237
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/AudioAlbumsActivity$5;-><init>(Lcom/perm/kate/AudioAlbumsActivity;J)V

    .line 246
    invoke-virtual {v0}, Lcom/perm/kate/AudioAlbumsActivity$5;->start()V

    .line 247
    return-void
.end method

.method private displayInitialData()V
    .locals 8

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Lcom/perm/kate/AudioAlbumsAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsAdapter;-><init>(Landroid/app/Activity;)V

    .line 72
    .local v0, "audioListAdapter":Lcom/perm/kate/AudioAlbumsAdapter;
    iget-object v4, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchAudioAlbums(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 74
    .local v1, "cached_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    invoke-direct {p0, v1}, Lcom/perm/kate/AudioAlbumsActivity;->makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 75
    .local v2, "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    invoke-virtual {v0, v2}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "audioListAdapter":Lcom/perm/kate/AudioAlbumsAdapter;
    .end local v1    # "cached_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    .end local v2    # "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 78
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 277
    iput v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    .line 278
    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumsActivity;->showProgressBar(Z)V

    .line 279
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$8;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    .line 285
    invoke-virtual {v0}, Lcom/perm/kate/AudioAlbumsActivity$8;->start()V

    .line 286
    return-void
.end method

.method private makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/AudioAlbum;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/AudioAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    new-instance v0, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    .line 86
    .local v0, "all_album":Lcom/perm/kate/api/AudioAlbum;
    iget-boolean v7, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    if-nez v7, :cond_0

    .line 87
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 88
    const v7, 0x7f07002e

    invoke-virtual {p0, v7}, Lcom/perm/kate/AudioAlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 93
    .local v4, "mid_long_value":J
    iget-object v7, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_3

    const/4 v2, 0x1

    .line 94
    .local v2, "is_me":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v7, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    if-nez v7, :cond_1

    .line 96
    new-instance v6, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v6}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    .line 97
    .local v6, "recomendations_album":Lcom/perm/kate/api/AudioAlbum;
    const-wide/16 v8, -0x2

    iput-wide v8, v6, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 98
    const v7, 0x7f0703a3

    invoke-virtual {p0, v7}, Lcom/perm/kate/AudioAlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v3, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v3}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    .line 102
    .local v3, "popular_album":Lcom/perm/kate/api/AudioAlbum;
    const-wide/16 v8, -0x3

    iput-wide v8, v3, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 103
    const v7, 0x7f070217

    invoke-virtual {p0, v7}, Lcom/perm/kate/AudioAlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v3    # "popular_album":Lcom/perm/kate/api/AudioAlbum;
    .end local v6    # "recomendations_album":Lcom/perm/kate/api/AudioAlbum;
    :cond_1
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_2
    return-object v1

    .line 93
    .end local v2    # "is_me":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->state:I

    .line 60
    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$1;-><init>(Lcom/perm/kate/AudioAlbumsActivity;)V

    .line 66
    invoke-virtual {v0}, Lcom/perm/kate/AudioAlbumsActivity$1;->start()V

    .line 67
    return-void
.end method

.method private showAudioAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 3
    .param p1, "album_id"    # Ljava/lang/Long;
    .param p2, "album_title"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/AudioAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 185
    const-string v1, "com.perm.kate.album_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 186
    const-string v1, "com.perm.kate.album_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "com.perm.kate.is_edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    :cond_0
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 190
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/AudioAlbumsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 167
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    const v2, 0x7f070475

    invoke-interface {p1, v0, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 168
    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->refresh()V

    .line 199
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumsActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumsActivity;->setHeaderTitle(I)V

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumsActivity;->setupMenuButton()V

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->owner_id:Ljava/lang/Long;

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.aid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->aid:Ljava/lang/Long;

    .line 48
    invoke-virtual {p0}, Lcom/perm/kate/AudioAlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.is_move"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->is_move:Z

    .line 49
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioAlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->displayInitialData()V

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/AudioAlbumsActivity;->refresh()V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 159
    invoke-virtual {p0, p1}, Lcom/perm/kate/AudioAlbumsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 175
    :pswitch_0
    invoke-direct {p0, v1, v1}, Lcom/perm/kate/AudioAlbumsActivity;->showAudioAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
