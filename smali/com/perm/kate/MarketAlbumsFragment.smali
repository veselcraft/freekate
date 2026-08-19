.class public Lcom/perm/kate/MarketAlbumsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MarketAlbumsFragment.java"


# instance fields
.field private album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field albums:Ljava/util/ArrayList;

.field callback:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private lv_album_list:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketAlbumsFragment$2;-><init>(Lcom/perm/kate/MarketAlbumsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 115
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketAlbumsFragment$4;-><init>(Lcom/perm/kate/MarketAlbumsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 134
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketAlbumsFragment$5;-><init>(Lcom/perm/kate/MarketAlbumsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MarketAlbumsFragment;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->group_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->requery()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MarketAlbumsFragment;Lcom/perm/kate/api/MarketAlbum;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/perm/kate/MarketAlbumsFragment;->showEditAlbumActivity(Lcom/perm/kate/api/MarketAlbum;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/MarketAlbumsFragment;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MarketAlbumsFragment;->deleteMarketAlbum(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->refreshOnThread()V

    return-void
.end method

.method private deleteMarketAlbum(J)V
    .locals 2

    .line 242
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketAlbumsFragment$6;-><init>(Lcom/perm/kate/MarketAlbumsFragment;Landroid/app/Activity;)V

    .line 251
    new-instance v1, Lcom/perm/kate/MarketAlbumsFragment$7;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/MarketAlbumsFragment$7;-><init>(Lcom/perm/kate/MarketAlbumsFragment;JLcom/perm/kate/session/Callback;)V

    .line 258
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 77
    :try_start_0
    new-instance v0, Lcom/perm/kate/MarketAlbumsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perm/kate/MarketAlbumsAdapter;-><init>(Landroid/app/Activity;)V

    .line 78
    iget-object v1, p0, Lcom/perm/kate/MarketAlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->requeryOnUiThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 82
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private refreshOnThread()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 52
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketAlbumsFragment$1;-><init>(Lcom/perm/kate/MarketAlbumsFragment;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requery()V
    .locals 4

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v1, Lcom/perm/kate/api/MarketAlbum;

    invoke-direct {v1}, Lcom/perm/kate/api/MarketAlbum;-><init>()V

    const v2, 0x7f0f0047

    .line 178
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 179
    iput-wide v2, v1, Lcom/perm/kate/api/MarketAlbum;->id:J

    .line 180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v1, p0, Lcom/perm/kate/MarketAlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MarketAlbumsAdapter;

    invoke-virtual {v1, v0}, Lcom/perm/kate/MarketAlbumsAdapter;->displayNewData(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MarketAlbumsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MarketAlbumsFragment$3;-><init>(Lcom/perm/kate/MarketAlbumsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showEditAlbumActivity(Lcom/perm/kate/api/MarketAlbum;)V
    .locals 4

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    iget-wide v1, p0, Lcom/perm/kate/MarketAlbumsFragment;->group_id:J

    const-string v3, "group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "album"

    .line 237
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0xa

    .line 238
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showNewMarketActivity()V
    .locals 4

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewMarketActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    iget-wide v1, p0, Lcom/perm/kate/MarketAlbumsFragment;->group_id:J

    const-string v3, "group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNewMarketAlbumActivity()V
    .locals 4

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewMarketAlbumActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 219
    iget-wide v1, p0, Lcom/perm/kate/MarketAlbumsFragment;->group_id:J

    const-string v3, "group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 220
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x3e9

    const v3, 0x7f0f0033

    .line 191
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x3

    const/16 v2, 0x3eb

    const v3, 0x7f0f0034

    .line 192
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0xa

    if-ne p2, p1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->refreshOnThread()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->group_id:J

    if-nez p1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->refreshOnThread()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00ae

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090208

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    .line 44
    iget-object p3, p0, Lcom/perm/kate/MarketAlbumsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/perm/kate/MarketAlbumsFragment;->album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->displayData()V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 206
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->showNewMarketAlbumActivity()V

    return v2

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->showNewMarketActivity()V

    return v2
.end method
