.class public Lcom/perm/kate/MarketAlbumsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MarketAlbumsFragment.java"


# instance fields
.field private album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketAlbum;",
            ">;"
        }
    .end annotation
.end field

.field callback:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private lv_album_list:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketAlbumsFragment$2;-><init>(Lcom/perm/kate/MarketAlbumsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 114
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketAlbumsFragment$4;-><init>(Lcom/perm/kate/MarketAlbumsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MarketAlbumsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/MarketAlbumsFragment;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->group_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketAlbumsFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketAlbumsFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->requery()V

    return-void
.end method

.method private displayData()V
    .locals 5

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Lcom/perm/kate/MarketAlbumsAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/perm/kate/MarketAlbumsAdapter;-><init>(Landroid/app/Activity;)V

    .line 77
    .local v0, "album_list_adapter":Lcom/perm/kate/MarketAlbumsAdapter;
    iget-object v2, p0, Lcom/perm/kate/MarketAlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->requeryOnUiThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "album_list_adapter":Lcom/perm/kate/MarketAlbumsAdapter;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 81
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshOnThread()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/MarketAlbumsFragment;->showProgressBar(Z)V

    .line 51
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketAlbumsFragment$1;-><init>(Lcom/perm/kate/MarketAlbumsFragment;)V

    .line 56
    invoke-virtual {v0}, Lcom/perm/kate/MarketAlbumsFragment$1;->start()V

    .line 57
    return-void
.end method

.method private requery()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketAlbum;>;"
    new-instance v0, Lcom/perm/kate/api/MarketAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/MarketAlbum;-><init>()V

    .line 139
    .local v0, "album_all_photos":Lcom/perm/kate/api/MarketAlbum;
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/perm/kate/MarketAlbumsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    .line 140
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/perm/kate/api/MarketAlbum;->id:J

    .line 141
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v2, p0, Lcom/perm/kate/MarketAlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MarketAlbumsAdapter;

    invoke-virtual {v2, v1}, Lcom/perm/kate/MarketAlbumsAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MarketAlbumsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MarketAlbumsFragment$3;-><init>(Lcom/perm/kate/MarketAlbumsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketAlbumsFragment;->group_id:J

    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->refreshOnThread()V

    .line 66
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v1, 0x7f0300a1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/perm/kate/MarketAlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    .line 44
    iget-object v1, p0, Lcom/perm/kate/MarketAlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/MarketAlbumsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    invoke-direct {p0}, Lcom/perm/kate/MarketAlbumsFragment;->displayData()V

    .line 46
    return-object v0
.end method
