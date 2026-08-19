.class public Lcom/perm/kate/RequestsFriendsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "RequestsFriendsFragment.java"


# instance fields
.field private callback:Lcom/perm/kate/session/Callback;

.field private friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

.field private from:Ljava/util/ArrayList;

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private second_callback:Lcom/perm/kate/session/Callback;

.field private users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/RequestsFriendsFragment$2;-><init>(Lcom/perm/kate/RequestsFriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 79
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/RequestsFriendsFragment$3;-><init>(Lcom/perm/kate/RequestsFriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->second_callback:Lcom/perm/kate/session/Callback;

    .line 144
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsFriendsFragment$5;-><init>(Lcom/perm/kate/RequestsFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 174
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsFriendsFragment$6;-><init>(Lcom/perm/kate/RequestsFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/RequestsFriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/RequestsFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/RequestsFriendsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/RequestsFriendsFragment;->checkFromIds(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/RequestsFriendsFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/RequestsFriendsFragment;->checkMissingUsers()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/RequestsFriendsFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/RequestsFriendsFragment;->displayData()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/RequestsFriendsFragment;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/RequestsFriendsFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/perm/kate/RequestsFriendsFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/perm/kate/RequestsFriendsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    return-object p0
.end method

.method private checkFromIds(Ljava/util/ArrayList;)V
    .locals 3

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 105
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 106
    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    .line 107
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkMissingUsers()V
    .locals 4

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 119
    aget-object v3, v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 121
    invoke-virtual {p0, v2}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method private displayData()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/RequestsFriendsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/RequestsFriendsFragment$4;-><init>(Lcom/perm/kate/RequestsFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 157
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0088

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090150

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09021e

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 32
    iget-object p3, p0, Lcom/perm/kate/RequestsFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    iget-object p2, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/RequestsFriendsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 35
    invoke-direct {p0}, Lcom/perm/kate/RequestsFriendsFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 168
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->refreshInThread()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->refreshInThread()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 48
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsFriendsFragment$1;-><init>(Lcom/perm/kate/RequestsFriendsFragment;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public secondStep()V
    .locals 5

    .line 74
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 76
    iget-object v3, p0, Lcom/perm/kate/RequestsFriendsFragment;->second_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getRequestsFriends(Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
