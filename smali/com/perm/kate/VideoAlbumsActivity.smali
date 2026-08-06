.class public Lcom/perm/kate/VideoAlbumsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "VideoAlbumsActivity.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field private can_edit:Z

.field private count:I

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

.field private lv_audio_list:Landroid/widget/ListView;

.field private owner_id:J

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    .line 29
    const/16 v0, 0x14

    iput v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->count:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    .line 35
    iput-boolean v1, p0, Lcom/perm/kate/VideoAlbumsActivity;->is_move:Z

    .line 36
    iput-boolean v1, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    .line 103
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoAlbumsActivity$2;-><init>(Lcom/perm/kate/VideoAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 128
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$3;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 139
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$4;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 168
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoAlbumsActivity$6;-><init>(Lcom/perm/kate/VideoAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loadmore_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoAlbumsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoAlbumsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;

    .prologue
    .line 21
    iget v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->count:I

    return v0
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoAlbumsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/VideoAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/perm/kate/VideoAlbumsActivity;->makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoAlbumsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/perm/kate/VideoAlbumsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    return p1
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoAlbumsActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/VideoAlbumsActivity;->checkIfLoadMoreRequired(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/VideoAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoAlbumsActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loadmore_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private checkIfLoadMoreRequired(II)V
    .locals 2
    .param p1, "lstVisible"    # I
    .param p2, "totalCount"    # I

    .prologue
    .line 151
    add-int/lit8 v1, p2, -0x2

    if-lt p1, v1, :cond_1

    const/4 v0, 0x1

    .line 152
    .local v0, "loadMore":Z
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    if-nez v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->loadMore()V

    .line 154
    :cond_0
    return-void

    .line 151
    .end local v0    # "loadMore":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayInitialData()V
    .locals 6

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Lcom/perm/kate/AudioAlbumsAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsAdapter;-><init>(Landroid/app/Activity;)V

    .line 74
    .local v0, "audioListAdapter":Lcom/perm/kate/AudioAlbumsAdapter;
    iget-object v3, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/perm/kate/VideoAlbumsActivity;->makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 76
    .local v1, "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "audioListAdapter":Lcom/perm/kate/AudioAlbumsAdapter;
    .end local v1    # "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {p0}, Lcom/perm/kate/VideoAlbumsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 80
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 157
    iput v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    .line 158
    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoAlbumsActivity;->showProgressBar(Z)V

    .line 159
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$5;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    .line 165
    invoke-virtual {v0}, Lcom/perm/kate/VideoAlbumsActivity$5;->start()V

    .line 166
    return-void
.end method

.method private makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
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
    .line 85
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    invoke-static {p0}, Lcom/perm/utils/VideoAlbumsHelper;->getAddedAlbum(Lcom/perm/kate/BaseActivity;)Lcom/perm/kate/api/AudioAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {p0}, Lcom/perm/utils/VideoAlbumsHelper;->getUploadedAlbum(Lcom/perm/kate/BaseActivity;)Lcom/perm/kate/api/AudioAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_0
    return-object v0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    .line 62
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$1;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    .line 68
    invoke-virtual {v0}, Lcom/perm/kate/VideoAlbumsActivity$1;->start()V

    .line 69
    return-void
.end method

.method private showVideoAlbumActivity()V
    .locals 6

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    iget-wide v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 224
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 225
    :cond_0
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 205
    iget-boolean v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    const v2, 0x7f07017b

    invoke-interface {p1, v0, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 207
    :cond_0
    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 231
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->refresh()V

    .line 234
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v2, 0x7f030113

    invoke-virtual {p0, v2}, Lcom/perm/kate/VideoAlbumsActivity;->setContentView(I)V

    .line 42
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Lcom/perm/kate/VideoAlbumsActivity;->setHeaderTitle(I)V

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/VideoAlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    .line 44
    const v2, 0x7f0e008d

    invoke-virtual {p0, v2}, Lcom/perm/kate/VideoAlbumsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 45
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/VideoAlbumsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/VideoAlbumsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 48
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 49
    .local v0, "account_id":J
    iget-wide v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 50
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, -0x1

    iget-wide v6, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    mul-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    .line 53
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/perm/kate/VideoAlbumsActivity;->setupMenuButton()V

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->displayInitialData()V

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->refresh()V

    .line 57
    return-void

    .line 51
    :cond_2
    iget-wide v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 52
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/perm/kate/VideoAlbumsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 214
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->showVideoAlbumActivity()V

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
