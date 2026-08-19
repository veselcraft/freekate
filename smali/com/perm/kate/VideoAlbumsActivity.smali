.class public Lcom/perm/kate/VideoAlbumsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "VideoAlbumsActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/AudioAlbumsAdapter;

.field private btn_clear:Landroid/widget/ImageButton;

.field callback:Lcom/perm/kate/session/Callback;

.field private can_edit:Z

.field private count:I

.field private delete_callback:Lcom/perm/kate/session/Callback;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private loaded_albums:Ljava/util/ArrayList;

.field private loadmore_callback:Lcom/perm/kate/session/Callback;

.field private longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private lv_audio_list:Landroid/widget/ListView;

.field private owner_id:J

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field select_video:Z

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    const/16 v0, 0x32

    .line 35
    iput v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->count:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    .line 46
    iput-boolean v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->select_video:Z

    .line 124
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoAlbumsActivity$3;-><init>(Lcom/perm/kate/VideoAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 152
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$4;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 162
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$5;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 209
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoAlbumsActivity$7;-><init>(Lcom/perm/kate/VideoAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    .line 218
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$8;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 247
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoAlbumsActivity$10;-><init>(Lcom/perm/kate/VideoAlbumsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loadmore_callback:Lcom/perm/kate/session/Callback;

    .line 327
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$11;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoAlbumsActivity;)Landroid/widget/EditText;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumsActivity;->filterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoAlbumsActivity;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/VideoAlbumsActivity;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/VideoAlbumsActivity;->checkIfLoadMoreRequired(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/VideoAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loadmore_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/VideoAlbumsActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumsActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoAlbumsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/perm/kate/VideoAlbumsActivity;->count:I

    return p0
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoAlbumsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/VideoAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoAlbumsActivity;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/perm/kate/VideoAlbumsActivity;->onFilterAlbums(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/perm/kate/VideoAlbumsActivity;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    return p1
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoAlbumsActivity;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/VideoAlbumsActivity;->showVideoAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/VideoAlbumsActivity;J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/VideoAlbumsActivity;->deleteVideoAlbum(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/VideoAlbumsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/VideoAlbumsActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/VideoAlbumsActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->refresh()V

    return-void
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

    .line 231
    iget p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    if-nez p1, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->loadMore()V

    :cond_1
    return-void
.end method

.method private deleteVideoAlbum(J)V
    .locals 1

    .line 198
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/VideoAlbumsActivity$6;-><init>(Lcom/perm/kate/VideoAlbumsActivity;J)V

    .line 206
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayInitialData()V
    .locals 4

    .line 95
    :try_start_0
    new-instance v0, Lcom/perm/kate/AudioAlbumsAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    .line 96
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lcom/perm/kate/VideoAlbumsActivity;->makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    invoke-virtual {v1, v0}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadMore()V
    .locals 1

    const/4 v0, 0x1

    .line 236
    iput v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    .line 237
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 238
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$9;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {p0}, Lcom/perm/utils/VideoAlbumsHelper;->getUploadedAlbum(Lcom/perm/kate/BaseActivity;)Lcom/perm/kate/api/AudioAlbum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private onFilterAlbums(Ljava/lang/String;)V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/VideoAlbumsActivity;->makeCompleteAlbumList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 346
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

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

    .line 348
    iget-object v3, v2, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    invoke-virtual {p1, v0}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private refresh()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->loaded_albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->state:I

    .line 84
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$2;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showVideoAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 4

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string v1, "com.perm.kate.album_id"

    .line 306
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.perm.kate.album_title"

    .line 307
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string p2, "com.perm.kate.is_edit"

    .line 308
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    :cond_0
    iget-wide p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    const-string v1, "com.perm.kate.owner_id"

    .line 311
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/16 p1, 0xa

    .line 312
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    .line 286
    iget-boolean v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x1f4

    const v3, 0x7f0f01dd

    .line 287
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 317
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v1, 0xa

    if-ne v1, p1, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->refresh()V

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    .line 322
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 50
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0133

    .line 51
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0042

    .line 52
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "select_video"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->select_video:Z

    const p1, 0x7f09020a

    .line 55
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p1, 0x7f090132

    .line 58
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->filterText:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0900be

    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 61
    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$1;-><init>(Lcom/perm/kate/VideoAlbumsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 69
    iget-wide v5, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    cmp-long p1, v5, v1

    if-gez p1, :cond_0

    .line 70
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, -0x1

    iget-wide v3, p0, Lcom/perm/kate/VideoAlbumsActivity;->owner_id:J

    mul-long v3, v3, v1

    invoke-virtual {p1, v0, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    goto :goto_0

    :cond_0
    cmp-long p1, v5, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    .line 73
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->can_edit:Z

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 75
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->displayInitialData()V

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/VideoAlbumsActivity;->refresh()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/perm/kate/VideoAlbumsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->lv_audio_list:Landroid/widget/ListView;

    .line 358
    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->filterText:Landroid/widget/EditText;

    .line 359
    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 360
    iput-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity;->adapter:Lcom/perm/kate/AudioAlbumsAdapter;

    .line 361
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 295
    invoke-direct {p0, p1, p1}, Lcom/perm/kate/VideoAlbumsActivity;->showVideoAlbumActivity(Ljava/lang/Long;Ljava/lang/String;)V

    return v1
.end method
