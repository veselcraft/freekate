.class public Lcom/perm/kate/MutualFriendsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MutualFriendsFragment.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field private friend_search:Landroid/widget/FrameLayout;

.field private friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private target_uid:Ljava/lang/String;

.field users_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/perm/kate/MutualFriendsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/MutualFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MutualFriendsFragment$2;-><init>(Lcom/perm/kate/MutualFriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 89
    new-instance v0, Lcom/perm/kate/MutualFriendsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MutualFriendsFragment$4;-><init>(Lcom/perm/kate/MutualFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MutualFriendsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MutualFriendsFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->target_uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/MutualFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MutualFriendsFragment;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/perm/kate/MutualFriendsFragment;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MutualFriendsFragment;)Lcom/perm/kate/FriendsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MutualFriendsFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/MutualFriendsFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MutualFriendsFragment;
    .param p1, "x1"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/MutualFriendsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MutualFriendsFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    return-object v0
.end method

.method private displayDataOnUiThread()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->users_ids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/MutualFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MutualFriendsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MutualFriendsFragment$3;-><init>(Lcom/perm/kate/MutualFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/MutualFriendsFragment;->showProgressBar(Z)V

    .line 44
    new-instance v0, Lcom/perm/kate/MutualFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MutualFriendsFragment$1;-><init>(Lcom/perm/kate/MutualFriendsFragment;)V

    .line 49
    invoke-virtual {v0}, Lcom/perm/kate/MutualFriendsFragment$1;->start()V

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/perm/kate/MutualFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->target_uid:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/perm/kate/MutualFriendsFragment;->refreshInThread()V

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/MutualFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 27
    iget-object v1, p0, Lcom/perm/kate/MutualFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/MutualFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 28
    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/perm/kate/MutualFriendsFragment;->friend_search:Landroid/widget/FrameLayout;

    .line 29
    iget-object v1, p0, Lcom/perm/kate/MutualFriendsFragment;->friend_search:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/MutualFriendsFragment;->displayDataOnUiThread()V

    .line 32
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 102
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/perm/kate/MutualFriendsFragment;->refreshInThread()V

    .line 107
    return-void
.end method
