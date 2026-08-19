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

.field private photos_callback:Lcom/perm/kate/session/Callback;

.field private photos_page_size:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/16 v0, 0x3c

    .line 26
    iput v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos_page_size:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/perm/kate/FavePhotosFragment;->state:I

    const-wide/16 v0, -0x3e9

    .line 38
    iput-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    .line 94
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FavePhotosFragment$3;-><init>(Lcom/perm/kate/FavePhotosFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos_callback:Lcom/perm/kate/session/Callback;

    .line 133
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePhotosFragment$5;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 163
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FavePhotosFragment$7;-><init>(Lcom/perm/kate/FavePhotosFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 196
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePhotosFragment$8;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->displayData()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/FavePhotosFragment;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/perm/kate/FavePhotosFragment;->photos_page_size:I

    return p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/FavePhotosFragment;->photos_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/FavePhotosFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/FavePhotosFragment;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->displayDataInUIThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/PhotoListAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/FavePhotosFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/FavePhotosFragment;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/perm/kate/FavePhotosFragment;->state:I

    return p0
.end method

.method static synthetic access$702(Lcom/perm/kate/FavePhotosFragment;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/perm/kate/FavePhotosFragment;->state:I

    return p1
.end method

.method static synthetic access$800(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/FavePhotosFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private displayData()V
    .locals 10

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 62
    sget-object v9, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    iget-wide v5, p0, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    iget-wide v7, p0, Lcom/perm/kate/FavePhotosFragment;->account_id:J

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchPhotos(JJJ)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/perm/kate/db/DataHelper;->getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    const-string v2, "fpf_getPhotos"

    const/4 v3, 0x0

    .line 63
    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 67
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/perm/kate/PhotoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/PhotoListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    .line 70
    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method private displayDataInUIThread()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FavePhotosFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/FavePhotosFragment$1;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 152
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePhotosFragment$6;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FavePhotosFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/FavePhotosFragment$4;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/perm/kate/FavePhotosFragment;->state:I

    .line 45
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->account_id:J

    .line 46
    iput-wide v0, p0, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0074

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090163

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    .line 54
    iget-object p3, p0, Lcom/perm/kate/FavePhotosFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    iget-object p2, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/perm/kate/FavePhotosFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/FavePhotosFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment;->gv_photos:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 220
    invoke-virtual {p0}, Lcom/perm/kate/FavePhotosFragment;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 86
    new-instance v0, Lcom/perm/kate/FavePhotosFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavePhotosFragment$2;-><init>(Lcom/perm/kate/FavePhotosFragment;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
