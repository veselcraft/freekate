.class public Lcom/perm/kate/MarketItemsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MarketItemsFragment.java"


# instance fields
.field private album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private album_id:J

.field albums:Ljava/util/ArrayList;

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

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/perm/kate/MarketItemsFragment;->state:I

    const/16 v0, 0x5a

    .line 50
    iput v0, p0, Lcom/perm/kate/MarketItemsFragment;->page_size:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MarketItemsFragment$7;-><init>(Lcom/perm/kate/MarketItemsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MarketItemsFragment;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/perm/kate/MarketItemsFragment;->album_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/MarketItemsFragment;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/perm/kate/MarketItemsFragment;->group_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MarketItemsFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/perm/kate/MarketItemsFragment;->state:I

    return p0
.end method

.method static synthetic access$302(Lcom/perm/kate/MarketItemsFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/perm/kate/MarketItemsFragment;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->requery()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->loadMore()V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 94
    :try_start_0
    new-instance v0, Lcom/perm/kate/MarketItemsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perm/kate/MarketItemsAdapter;-><init>(Landroid/app/Activity;)V

    .line 95
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->requeryOnUiThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 99
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 176
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemsFragment$6;-><init>(Lcom/perm/kate/MarketItemsFragment;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshOnThread()V
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/perm/kate/MarketItemsFragment;->state:I

    .line 64
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 65
    new-instance v0, Lcom/perm/kate/MarketItemsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MarketItemsFragment$1;-><init>(Lcom/perm/kate/MarketItemsFragment;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeFromList(J)V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/MarketItem;

    .line 230
    iget-wide v2, v1, Lcom/perm/kate/api/MarketItem;->id:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 236
    iget-object p1, p0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->requeryOnUiThread()V

    :cond_2
    return-void
.end method

.method private requery()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MarketItemsAdapter;

    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MarketItemsAdapter;->displayNewData(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MarketItemsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MarketItemsFragment$3;-><init>(Lcom/perm/kate/MarketItemsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 p2, 0xd

    if-ne p2, p1, :cond_2

    const-wide/16 p1, 0x0

    if-eqz p3, :cond_0

    const-string v0, "deleted_item_id"

    .line 218
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    cmp-long p3, v0, p1

    if-lez p3, :cond_1

    .line 220
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/MarketItemsFragment;->removeFromList(J)V

    goto :goto_1

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->refreshOnThread()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 78
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketItemsFragment;->group_id:J

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketItemsFragment;->album_id:J

    if-nez p1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->refreshOnThread()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00ae

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090208

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    .line 56
    iget-object p3, p0, Lcom/perm/kate/MarketItemsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object p2, p0, Lcom/perm/kate/MarketItemsFragment;->lv_album_list:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/perm/kate/MarketItemsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    invoke-direct {p0}, Lcom/perm/kate/MarketItemsFragment;->displayData()V

    return-object p1
.end method
