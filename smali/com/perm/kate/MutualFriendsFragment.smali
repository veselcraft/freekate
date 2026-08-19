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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/perm/kate/MutualFriendsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/MutualFriendsFragment;->target_uid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/MutualFriendsFragment;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/perm/kate/MutualFriendsFragment;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MutualFriendsFragment;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/MutualFriendsFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/MutualFriendsFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/MutualFriendsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/MutualFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    return-object p0
.end method

.method private displayDataOnUiThread()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->users_ids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MutualFriendsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MutualFriendsFragment$3;-><init>(Lcom/perm/kate/MutualFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 44
    new-instance v0, Lcom/perm/kate/MutualFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MutualFriendsFragment$1;-><init>(Lcom/perm/kate/MutualFriendsFragment;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment;->target_uid:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/perm/kate/MutualFriendsFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0088

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09021e

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/MutualFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 27
    iget-object p3, p0, Lcom/perm/kate/MutualFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p2, 0x7f090150

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/perm/kate/MutualFriendsFragment;->friend_search:Landroid/widget/FrameLayout;

    const/16 p3, 0x8

    .line 29
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/MutualFriendsFragment;->displayDataOnUiThread()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment;->lv_user_list:Landroid/widget/ListView;

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

    .line 106
    invoke-direct {p0}, Lcom/perm/kate/MutualFriendsFragment;->refreshInThread()V

    return-void
.end method
