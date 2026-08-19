.class public Lcom/perm/kate/video_cache/VideoCacheActivity;
.super Lcom/perm/kate/BaseActivity;
.source "VideoCacheActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/VideoListAdapter;

.field private btn_clear:Landroid/widget/ImageButton;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation
.end field

.field last_notify:J

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_video_list:Landroid/widget/ListView;

.field private serviceCallback:Lcom/perm/kate/video_cache/VideoCacheService$Callback;

.field private videos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 73
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
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->filterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/video_cache/VideoCacheActivity;)Lcom/perm/kate/VideoListAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/video_cache/VideoCacheActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->displayNewData()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/video_cache/VideoCacheActivity;JJ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/video_cache/VideoCacheActivity;->displayContextMenu(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/video_cache/VideoCacheActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/video_cache/VideoCacheActivity;->onFilterVideos(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/video_cache/VideoCacheActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->clearCache()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/video_cache/VideoCacheActivity;JJ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/video_cache/VideoCacheActivity;->removeFromLocalListAndNotify(JJ)V

    return-void
.end method

.method private clearCache()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 191
    invoke-static {}, Lcom/perm/kate/video_cache/VideoCache;->clearInThread()V

    return-void
.end method

.method private confirmClearCache()V
    .locals 4

    .line 173
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04dc

    .line 174
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/video_cache/VideoCacheActivity$5;

    invoke-direct {v2, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$5;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V

    const v3, 0x7f0f05a7

    .line 175
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 183
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private displayContextMenu(JJ)V
    .locals 11

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f03e8

    const/4 v7, 0x1

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStatus(JJ)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 202
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f0449

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f042b

    invoke-direct {v0, v3, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v8, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v10, Lcom/perm/kate/video_cache/VideoCacheActivity$6;

    move-object v0, v10

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/video_cache/VideoCacheActivity$6;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;Ljava/util/ArrayList;JJ)V

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 223
    invoke-virtual {p1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private displayNewData()V
    .locals 2

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
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v1, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private onFilterVideos(Ljava/lang/String;)V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 134
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Video;

    .line 138
    iget-object v4, v3, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, v3, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {p1, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 141
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method private removeFromLocalListAndNotify(JJ)V
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    .line 229
    iget-wide v2, v1, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    iget-wide v2, v1, Lcom/perm/kate/api/Video;->owner_id:J

    cmp-long v4, v2, p3

    if-nez v4, :cond_0

    .line 230
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x1f4

    const v3, 0x7f0f01ce

    .line 158
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0134

    .line 40
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f051c

    .line 41
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f09021f

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->lv_video_list:Landroid/widget/ListView;

    const p1, 0x7f090132

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->filterText:Landroid/widget/EditText;

    .line 45
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0900be

    .line 46
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 47
    new-instance v0, Lcom/perm/kate/video_cache/VideoCacheActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$1;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance p1, Lcom/perm/kate/VideoListAdapter;

    invoke-direct {p1, p0}, Lcom/perm/kate/VideoListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->adapter:Lcom/perm/kate/VideoListAdapter;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p1, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    .line 55
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->lv_video_list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->displayNewData()V

    .line 57
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->lv_video_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->serviceCallback:Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    invoke-static {p1}, Lcom/perm/kate/video_cache/VideoCacheService;->addCallback(Lcom/perm/kate/video_cache/VideoCacheService$Callback;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 149
    invoke-virtual {p0, p1}, Lcom/perm/kate/video_cache/VideoCacheActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity;->serviceCallback:Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheService;->removeCallback(Lcom/perm/kate/video_cache/VideoCacheService$Callback;)V

    .line 70
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->confirmClearCache()V

    return v1
.end method
