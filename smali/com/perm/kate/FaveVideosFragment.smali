.class public Lcom/perm/kate/FaveVideosFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FaveVideosFragment.java"


# instance fields
.field private account_id:J

.field private links_callback:Lcom/perm/kate/session/Callback;

.field private lv_videos_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field videoListAdapter:Lcom/perm/kate/VideoListAdapter;

.field private videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

.field videos:Ljava/util/ArrayList;
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
    .line 16
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/FaveVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FaveVideosFragment$2;-><init>(Lcom/perm/kate/FaveVideosFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->links_callback:Lcom/perm/kate/session/Callback;

    .line 85
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveVideosFragment$3;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 96
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveVideosFragment$4;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FaveVideosFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->links_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/FaveVideosFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/FaveVideosFragment;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/perm/kate/FaveVideosFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FaveVideosFragment;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/perm/kate/FaveVideosFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/VideoMenuCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FaveVideosFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    return-object v0
.end method

.method private displayData()V
    .locals 8

    .prologue
    .line 44
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/FaveVideosFragment;->account_id:J

    iget-wide v4, p0, Lcom/perm/kate/FaveVideosFragment;->account_id:J

    const-wide/16 v6, -0x3

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchVideos(JJJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    .line 45
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 46
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/perm/kate/FaveVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FaveVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FaveVideosFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/FaveVideosFragment$5;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FaveVideosFragment;->account_id:J

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/FaveVideosFragment;->refreshInThread()V

    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const v1, 0x7f030069

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    .line 34
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FaveVideosFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 35
    new-instance v1, Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FaveVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/perm/kate/VideoListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/FaveVideosFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    .line 36
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FaveVideosFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/FaveVideosFragment;->displayData()V

    .line 38
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment;->lv_videos_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 83
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/perm/kate/FaveVideosFragment;->refreshInThread()V

    .line 126
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/FaveVideosFragment;->showProgressBar(Z)V

    .line 50
    new-instance v0, Lcom/perm/kate/FaveVideosFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveVideosFragment$1;-><init>(Lcom/perm/kate/FaveVideosFragment;)V

    .line 55
    invoke-virtual {v0}, Lcom/perm/kate/FaveVideosFragment$1;->start()V

    .line 56
    return-void
.end method
