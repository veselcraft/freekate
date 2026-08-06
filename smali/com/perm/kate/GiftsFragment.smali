.class public Lcom/perm/kate/GiftsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "GiftsFragment.java"


# instance fields
.field private adapter:Lcom/perm/kate/GiftsListAdapter;

.field private count:Ljava/lang/Long;

.field private gifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GiftItem;",
            ">;"
        }
    .end annotation
.end field

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

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 25
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->count:Ljava/lang/Long;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/GiftsFragment;->state:I

    .line 32
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->gifts:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/GiftsFragment;->is_me:Z

    .line 84
    new-instance v0, Lcom/perm/kate/GiftsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GiftsFragment$2;-><init>(Lcom/perm/kate/GiftsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->gifts_callback:Lcom/perm/kate/session/Callback;

    .line 148
    new-instance v0, Lcom/perm/kate/GiftsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsFragment$4;-><init>(Lcom/perm/kate/GiftsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GiftsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 179
    new-instance v0, Lcom/perm/kate/GiftsFragment$6;

    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GiftsFragment;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->count:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/GiftsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->gifts_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->gifts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment;->gifts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/GiftsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 20
    iget v0, p0, Lcom/perm/kate/GiftsFragment;->state:I

    return v0
.end method

.method static synthetic access$402(Lcom/perm/kate/GiftsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/perm/kate/GiftsFragment;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/GiftsFragment;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/GiftsFragment;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GiftsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/GiftsFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GiftsFragment;)Lcom/perm/utils/ScrollPauser;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/GiftsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GiftsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->load_more_gifts_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GiftItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/GiftsFragment;->adapter:Lcom/perm/kate/GiftsListAdapter;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/perm/kate/GiftsListAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/perm/kate/GiftsFragment;->is_me:Z

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/GiftsListAdapter;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/perm/kate/GiftsFragment;->adapter:Lcom/perm/kate/GiftsListAdapter;

    .line 138
    iget-object v1, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GiftsFragment;->adapter:Lcom/perm/kate/GiftsListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GiftsFragment;->adapter:Lcom/perm/kate/GiftsListAdapter;

    invoke-virtual {v1, p1}, Lcom/perm/kate/GiftsListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GiftsFragment;->displayToast(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GiftItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GiftsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/GiftsFragment$3;-><init>(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/perm/kate/GiftsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsFragment$5;-><init>(Lcom/perm/kate/GiftsFragment;)V

    .line 176
    invoke-virtual {v0}, Lcom/perm/kate/GiftsFragment$5;->start()V

    .line 177
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->gifts_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 64
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->load_more_gifts_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    .line 50
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 51
    .local v0, "mid":J
    iget-object v2, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/GiftsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/perm/kate/GiftsFragment;->is_me:Z

    .line 55
    if-nez p1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->refreshInThread()V

    .line 57
    :cond_1
    iput v3, p0, Lcom/perm/kate/GiftsFragment;->state:I

    .line 58
    return-void

    :cond_2
    move v2, v3

    .line 53
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    const v1, 0x7f030084

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    .line 41
    iget-object v1, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GiftsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    iget-object v1, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GiftsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 43
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 118
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/perm/kate/GiftsFragment;->refreshInThread()V

    .line 70
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GiftsFragment;->showProgressBar(Z)V

    .line 74
    new-instance v0, Lcom/perm/kate/GiftsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GiftsFragment$1;-><init>(Lcom/perm/kate/GiftsFragment;)V

    .line 81
    invoke-virtual {v0}, Lcom/perm/kate/GiftsFragment$1;->start()V

    .line 82
    return-void
.end method
