.class public Lcom/perm/kate/video_cache/VideoCacheActivity;
.super Lcom/perm/kate/BaseActivity;
.source "VideoCacheActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/VideoListAdapter;

.field private btn_clear:Landroid/widget/ImageButton;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field last_notify:J

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_video_list:Landroid/widget/ListView;

.field private serviceCallback:Lcom/perm/kate/video_cache/VideoCacheService$Callback;

.field private videos:Ljava/util/ArrayList;
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
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->last_notify:J

    .line 75
    new-instance v0, Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$2;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->serviceCallback:Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    .line 102
    new-instance v0, Lcom/perm/kate/video_cache/VideoCacheActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$3;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 114
    new-instance v0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$4;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->filterText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/video_cache/VideoCacheActivity;)Lcom/perm/kate/VideoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/video_cache/VideoCacheActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->displayNewData()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/video_cache/VideoCacheActivity;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/video_cache/VideoCacheActivity;->displayContextMenu(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/video_cache/VideoCacheActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/video_cache/VideoCacheActivity;->onFilterVideos(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/video_cache/VideoCacheActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->clearCache()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/video_cache/VideoCacheActivity;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/video_cache/VideoCacheActivity;->removeFromLocalListAndNotify(JJ)V

    return-void
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/VideoListAdapter;->notifyDataSetChanged()V

    .line 190
    invoke-static {}, Lcom/perm/kate/video_cache/VideoCache;->clearInThread()V

    .line 191
    return-void
.end method

.method private confirmClearCache()V
    .locals 5

    .prologue
    .line 172
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07044a

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/video_cache/VideoCacheActivity$5;

    invoke-direct {v4, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$5;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V

    .line 174
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 181
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 182
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 183
    return-void
.end method

.method private displayContextMenu(JJ)V
    .locals 11
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v3, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f07037e

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStatus(JJ)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 201
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0703c4

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0703ad

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v9, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v1, Lcom/perm/kate/video_cache/VideoCacheActivity$6;

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/video_cache/VideoCacheActivity$6;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;Ljava/util/ArrayList;JJ)V

    invoke-virtual {v9, v10, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    .line 221
    .local v8, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 222
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 223
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 224
    return-void
.end method

.method private displayNewData()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStates()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 63
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper;->getVideoDownloads()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    .line 64
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 65
    return-void
.end method

.method private onFilterVideos(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v3, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "filtred_videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    iget-object v3, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    monitor-enter v3

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

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

    .line 137
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

    .line 138
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
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

    .line 141
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v2, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private removeFromLocalListAndNotify(JJ)V
    .locals 5
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 227
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 228
    .local v0, "v":Lcom/perm/kate/api/Video;
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/perm/kate/api/Video;->owner_id:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    .end local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v1}, Lcom/perm/kate/VideoListAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_2
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 156
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    const v2, 0x7f070166

    invoke-interface {p1, v0, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 158
    :cond_0
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030114

    invoke-virtual {p0, v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f07048f

    invoke-virtual {p0, v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->setHeaderTitle(I)V

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->setupMenuButton()V

    .line 43
    const v0, 0x7f0e034f

    invoke-virtual {p0, v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->lv_video_list:Landroid/widget/ListView;

    .line 44
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->filterText:Landroid/widget/EditText;

    .line 45
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->filterText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 47
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->btn_clear:Landroid/widget/ImageButton;

    new-instance v1, Lcom/perm/kate/video_cache/VideoCacheActivity$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$1;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lcom/perm/kate/VideoListAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    .line 54
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    .line 55
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->lv_video_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->displayNewData()V

    .line 57
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->lv_video_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->serviceCallback:Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheService;->addCallback(Lcom/perm/kate/video_cache/VideoCacheService$Callback;)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    invoke-virtual {p0, p1}, Lcom/perm/kate/video_cache/VideoCacheActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->serviceCallback:Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheService;->removeCallback(Lcom/perm/kate/video_cache/VideoCacheService$Callback;)V

    .line 70
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->confirmClearCache()V

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
