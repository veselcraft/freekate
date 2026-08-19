.class public Lcom/perm/kate/FaveVideosFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FaveVideosFragment.java"


# instance fields
.field private account_id:J

.field is_fave:Z

.field private links_callback:Lcom/perm/kate/session/Callback;

.field private final load_more_callback:Lcom/perm/kate/session/Callback;

.field private lv_videos_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field page_size:I

.field private final scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I

.field videoListAdapter:Lcom/perm/kate/VideoListAdapter;

.field private videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

.field videos:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$WHHDrAVw6CHaHKgptUnCvLe8mWE(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/FaveVideosFragment;->lambda$loadMore$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/perm/kate/FaveVideosFragment;->state:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveVideosFragment$2;-><init>(Lcom/perm/kate/FaveVideosFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->links_callback:Lcom/perm/kate/session/Callback;

    .line 104
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveVideosFragment$3;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 115
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveVideosFragment$4;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    .line 153
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveVideosFragment$6;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 177
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveVideosFragment$7;-><init>(Lcom/perm/kate/FaveVideosFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/FaveVideosFragment;->links_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/FaveVideosFragment;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/perm/kate/FaveVideosFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/FaveVideosFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FaveVideosFragment;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/FaveVideosFragment;->checkStateOnUiThread(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/FaveVideosFragment;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/perm/kate/FaveVideosFragment;->state:I

    return p0
.end method

.method static synthetic access$402(Lcom/perm/kate/FaveVideosFragment;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/perm/kate/FaveVideosFragment;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/VideoMenuCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/FaveVideosFragment;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    return-object p0
.end method

.method private checkStateOnUiThread(I)V
    .locals 1

    .line 198
    iget v0, p0, Lcom/perm/kate/FaveVideosFragment;->page_size:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/perm/kate/FaveVideosFragment;->state:I

    return-void
.end method

.method private displayData()V
    .locals 7

    .line 55
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/FaveVideosFragment;->account_id:J

    iget-boolean v1, p0, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x4

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x3

    :goto_0
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchVideos(JJJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    .line 56
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v1, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$loadMore$0()V
    .locals 5

    .line 169
    iget-boolean v0, p0, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v1, p0, Lcom/perm/kate/FaveVideosFragment;->page_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FaveVideosFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFaveVideosNew(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 172
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v1, p0, Lcom/perm/kate/FaveVideosFragment;->page_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FaveVideosFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFaveVideos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FaveVideosFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveVideosFragment$5;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method loadMore()V
    .locals 2

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 167
    iput v0, p0, Lcom/perm/kate/FaveVideosFragment;->state:I

    .line 168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/FaveVideosFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveVideosFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FaveVideosFragment;->account_id:J

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "is_fave"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    .line 36
    :cond_0
    iget-boolean p1, p0, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x190

    :goto_0
    iput p1, p0, Lcom/perm/kate/FaveVideosFragment;->page_size:I

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/FaveVideosFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0073

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090211

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    .line 44
    iget-object p3, p0, Lcom/perm/kate/FaveVideosFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    new-instance p2, Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/perm/kate/VideoListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/perm/kate/FaveVideosFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    .line 46
    iget-object p3, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object p2, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/FaveVideosFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 48
    invoke-direct {p0}, Lcom/perm/kate/FaveVideosFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/perm/kate/FaveVideosFragment;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/perm/kate/FaveVideosFragment;->state:I

    .line 61
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 62
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveVideosFragment$1;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
