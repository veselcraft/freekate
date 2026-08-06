.class public Lcom/perm/kate/FavePhotosFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FavePhotosFragment.java"


# instance fields
.field private account_id:J

.field album_id:J

.field album_owner_id:J

.field private callback_load_more:Lcom/perm/kate/session/Callback;

.field private gv_photos:Landroid/widget/GridView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private photos_callback:Lcom/perm/kate/session/Callback;

.field private photos_page_size:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 26
    const/16 v0, 0xc8

    iput v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos_page_size:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/FavePhotosFragment;->state:I

    .line 38
    const-wide/16 v0, -0x3e9

    iput-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    .line 92
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FavePhotosFragment$3;-><init>(Lcom/perm/kate/FavePhotosFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos_callback:Lcom/perm/kate/session/Callback;

    .line 131
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePhotosFragment$5;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 161
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$7;

    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FavePhotosFragment$7;-><init>(Lcom/perm/kate/FavePhotosFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 194
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePhotosFragment$8;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->displayData()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/FavePhotosFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    iget v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos_page_size:I

    return v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/FavePhotosFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/FavePhotosFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->displayDataInUIThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/PhotoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/FavePhotosFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    iget v0, p0, Lcom/perm/kate/FavePhotosFragment;->state:I

    return v0
.end method

.method static synthetic access$702(Lcom/perm/kate/FavePhotosFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/perm/kate/FavePhotosFragment;->state:I

    return p1
.end method

.method static synthetic access$800(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private displayData()V
    .locals 9

    .prologue
    .line 61
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    iget-wide v4, p0, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    iget-wide v6, p0, Lcom/perm/kate/FavePhotosFragment;->account_id:J

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchPhotos(JJJ)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/perm/kate/db/DataHelper;->getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    .line 64
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 65
    .local v0, "photo":Lcom/perm/kate/api/Photo;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    goto :goto_0

    .line 67
    .end local v0    # "photo":Lcom/perm/kate/api/Photo;
    :cond_0
    new-instance v1, Lcom/perm/kate/PhotoListAdapter;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/PhotoListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    .line 68
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    :cond_1
    return-void
.end method

.method private displayDataInUIThread()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FavePhotosFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/FavePhotosFragment$1;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePhotosFragment$6;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    .line 158
    invoke-virtual {v0}, Lcom/perm/kate/FavePhotosFragment$6;->start()V

    .line 159
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FavePhotosFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/FavePhotosFragment$4;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/FavePhotosFragment;->state:I

    .line 45
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->account_id:J

    .line 46
    iget-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->account_id:J

    iput-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->refreshInThread()V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    .line 54
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->displayData()V

    .line 57
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 119
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->refreshInThread()V

    .line 219
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/FavePhotosFragment;->showProgressBar(Z)V

    .line 84
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePhotosFragment$2;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    .line 89
    invoke-virtual {v0}, Lcom/perm/kate/FavePhotosFragment$2;->start()V

    .line 90
    return-void
.end method
