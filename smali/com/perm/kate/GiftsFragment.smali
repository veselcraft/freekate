.class public Lcom/perm/kate/GiftsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "GiftsFragment.java"


# instance fields
.field private adapter:Lcom/perm/kate/GiftsListAdapter;

.field private count:Ljava/lang/Long;

.field private gifts:Ljava/util/ArrayList;

.field private gifts_callback:Lcom/perm/kate/session/Callback;

.field private is_me:Z

.field private load_more_gifts_callback:Lcom/perm/kate/session/Callback;

.field private lv_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I

.field private user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const-wide/16 v0, 0x14

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->count:Ljava/lang/Long;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/perm/kate/GiftsFragment;->state:I

    .line 32
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->gifts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/perm/kate/GiftsFragment;->is_me:Z

    .line 84
    new-instance v0, Lcom/perm/kate/GiftsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GiftsFragment$2;-><init>(Lcom/perm/kate/GiftsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->gifts_callback:Lcom/perm/kate/session/Callback;

    .line 148
    new-instance v0, Lcom/perm/kate/GiftsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsFragment$4;-><init>(Lcom/perm/kate/GiftsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 179
    new-instance v0, Lcom/perm/kate/GiftsFragment$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GiftsFragment$6;-><init>(Lcom/perm/kate/GiftsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->load_more_gifts_callback:Lcom/perm/kate/session/Callback;

    .line 209
    new-instance v0, Lcom/perm/kate/GiftsFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsFragment$7;-><init>(Lcom/perm/kate/GiftsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GiftsFragment;)Ljava/lang/Long;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/GiftsFragment;)Ljava/lang/Long;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/GiftsFragment;->count:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/GiftsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/GiftsFragment;->gifts_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/GiftsFragment;->gifts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment;->gifts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/GiftsFragment;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/perm/kate/GiftsFragment;->state:I

    return p0
.end method

.method static synthetic access$402(Lcom/perm/kate/GiftsFragment;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/perm/kate/GiftsFragment;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/GiftsFragment;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/GiftsFragment;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GiftsFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/GiftsFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GiftsFragment;)Lcom/perm/utils/ScrollPauser;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/GiftsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/GiftsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/GiftsFragment;->load_more_gifts_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->adapter:Lcom/perm/kate/GiftsListAdapter;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/perm/kate/GiftsListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/perm/kate/GiftsFragment;->is_me:Z

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/GiftsListAdapter;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->adapter:Lcom/perm/kate/GiftsListAdapter;

    .line 138
    iget-object v1, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->adapter:Lcom/perm/kate/GiftsListAdapter;

    invoke-virtual {v0, p1}, Lcom/perm/kate/GiftsListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GiftsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/GiftsFragment$3;-><init>(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 168
    new-instance v0, Lcom/perm/kate/GiftsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsFragment$5;-><init>(Lcom/perm/kate/GiftsFragment;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->gifts_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 64
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->load_more_gifts_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 48
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    .line 50
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 51
    iget-object v4, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/GiftsFragment;->is_me:Z

    if-nez p1, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->refreshInThread()V

    .line 57
    :cond_2
    iput v4, p0, Lcom/perm/kate/GiftsFragment;->state:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0091

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09020f

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    .line 41
    iget-object p3, p0, Lcom/perm/kate/GiftsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    iget-object p2, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/GiftsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->refreshInThread()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 74
    new-instance v0, Lcom/perm/kate/GiftsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsFragment$1;-><init>(Lcom/perm/kate/GiftsFragment;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
