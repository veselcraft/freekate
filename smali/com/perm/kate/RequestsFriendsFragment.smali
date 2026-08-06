.class public Lcom/perm/kate/RequestsFriendsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "RequestsFriendsFragment.java"


# instance fields
.field private callback:Lcom/perm/kate/session/Callback;

.field private friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

.field private from:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private second_callback:Lcom/perm/kate/session/Callback;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/RequestsFriendsFragment$2;-><init>(Lcom/perm/kate/RequestsFriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 79
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/RequestsFriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/RequestsFriendsFragment;->checkFromIds(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/RequestsFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/RequestsFriendsFragment;->checkMissingUsers()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/RequestsFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/RequestsFriendsFragment;->displayData()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/RequestsFriendsFragment;)Lcom/perm/kate/FriendsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/perm/kate/RequestsFriendsFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;
    .param p1, "x1"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/perm/kate/RequestsFriendsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/RequestsFriendsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    return-object v0
.end method

.method private checkFromIds(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    const/4 v5, 0x2

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 105
    .local v1, "user":[Ljava/lang/Object;
    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    aget-object v3, v1, v5

    if-eqz v3, :cond_0

    .line 106
    aget-object v0, v1, v5

    check-cast v0, Ljava/lang/Long;

    .line 107
    .local v0, "from_id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0    # "from_id":Ljava/lang/Long;
    .end local v1    # "user":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private checkMissingUsers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "users_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/perm/kate/RequestsFriendsFragment;->from:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 119
    .local v0, "user":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v0    # "user":[Ljava/lang/Object;
    :cond_1
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 121
    invoke-virtual {p0, v4}, Lcom/perm/kate/RequestsFriendsFragment;->showProgressBar(Z)V

    .line 122
    return-void
.end method

.method private displayData()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->users:Ljava/util/ArrayList;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/RequestsFriendsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/RequestsFriendsFragment$4;-><init>(Lcom/perm/kate/RequestsFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 157
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/RequestsFriendsFragment;->setHasOptionsMenu(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->refreshInThread()V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 32
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/RequestsFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/RequestsFriendsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 35
    invoke-direct {p0}, Lcom/perm/kate/RequestsFriendsFragment;->displayData()V

    .line 36
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->refreshInThread()V

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->refreshInThread()V

    .line 209
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/RequestsFriendsFragment;->showProgressBar(Z)V

    .line 48
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/RequestsFriendsFragment$1;-><init>(Lcom/perm/kate/RequestsFriendsFragment;)V

    .line 55
    invoke-virtual {v0}, Lcom/perm/kate/RequestsFriendsFragment$1;->start()V

    .line 56
    return-void
.end method

.method public secondStep()V
    .locals 5

    .prologue
    .line 74
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/perm/kate/RequestsFriendsFragment;->second_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/RequestsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getRequestsFriends(Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
