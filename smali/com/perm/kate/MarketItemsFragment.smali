.class public Lcom/perm/kate/MarketItemsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MarketItemsFragment.java"


# instance fields
.field private album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private album_id:J

.field albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketItem;",
            ">;"
        }
    .end annotation
.end field

.field callback:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private lv_album_list:Landroid/widget/GridView;

.field page_size:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/MarketItemsFragment;->state:I

    .line 50
    const/16 v0, 0x64

    iput v0, p0, Lcom/perm/kate/MarketItemsFragment;->page_size:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketItemsFragment$2;-><init>(Lcom/perm/kate/MarketItemsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 137
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemsFragment$4;-><init>(Lcom/perm/kate/MarketItemsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 155
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemsFragment$5;-><init>(Lcom/perm/kate/MarketItemsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 188
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$7;

    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketItemsFragment$7;-><init>(Lcom/perm/kate/MarketItemsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MarketItemsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/perm/kate/MarketItemsFragment;->album_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/MarketItemsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/perm/kate/MarketItemsFragment;->group_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MarketItemsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/perm/kate/MarketItemsFragment;->state:I

    return v0
.end method

.method static synthetic access$302(Lcom/perm/kate/MarketItemsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketItemsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/perm/kate/MarketItemsFragment;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->requery()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->loadMore()V

    return-void
.end method

.method private displayData()V
    .locals 5

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Lcom/perm/kate/MarketItemsAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/perm/kate/MarketItemsAdapter;-><init>(Landroid/app/Activity;)V

    .line 95
    .local v0, "album_list_adapter":Lcom/perm/kate/MarketItemsAdapter;
    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->requeryOnUiThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "album_list_adapter":Lcom/perm/kate/MarketItemsAdapter;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 99
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemsFragment$6;-><init>(Lcom/perm/kate/MarketItemsFragment;)V

    .line 185
    invoke-virtual {v0}, Lcom/perm/kate/MarketItemsFragment$6;->start()V

    .line 186
    return-void
.end method

.method private refreshOnThread()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/perm/kate/MarketItemsFragment;->state:I

    .line 64
    invoke-virtual {p0, v0}, Lcom/perm/kate/MarketItemsFragment;->showProgressBar(Z)V

    .line 65
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemsFragment$1;-><init>(Lcom/perm/kate/MarketItemsFragment;)V

    .line 73
    invoke-virtual {v0}, Lcom/perm/kate/MarketItemsFragment$1;->start()V

    .line 74
    return-void
.end method

.method private requery()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MarketItemsAdapter;

    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MarketItemsAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MarketItemsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MarketItemsFragment$3;-><init>(Lcom/perm/kate/MarketItemsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketItemsFragment;->group_id:J

    .line 80
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketItemsFragment;->album_id:J

    .line 82
    if-nez p1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->refreshOnThread()V

    .line 84
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v1, 0x7f0300a1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    .line 56
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->displayData()V

    .line 59
    return-object v0
.end method
