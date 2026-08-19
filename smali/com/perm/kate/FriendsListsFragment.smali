.class public Lcom/perm/kate/FriendsListsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FriendsListsFragment.java"


# instance fields
.field private adapter:Lcom/perm/kate/FriendsListsAdapter;

.field private callback_friendsLists:Lcom/perm/kate/session/Callback;

.field private lv_list:Landroid/widget/ListView;

.field private mLists:Ljava/util/ArrayList;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/perm/kate/FriendsListsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FriendsListsFragment$2;-><init>(Lcom/perm/kate/FriendsListsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    .line 90
    new-instance v0, Lcom/perm/kate/FriendsListsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListsFragment$4;-><init>(Lcom/perm/kate/FriendsListsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsListsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/perm/kate/FriendsListsFragment;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/perm/kate/FriendsListsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/FriendsListsFragment;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->displayListsInUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FriendsListsFragment;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->displayLists()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/FriendsListsFragment;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsListsFragment;->selectListAndFinish(I)V

    return-void
.end method

.method private displayLists()V
    .locals 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->adapter:Lcom/perm/kate/FriendsListsAdapter;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/perm/kate/FriendsListsAdapter;

    iget-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/FriendsListsAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->adapter:Lcom/perm/kate/FriendsListsAdapter;

    .line 81
    iget-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsListsAdapter;->setData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayListsInUiThread()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FriendsListsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/FriendsListsFragment$3;-><init>(Lcom/perm/kate/FriendsListsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getFriendsList()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 43
    new-instance v0, Lcom/perm/kate/FriendsListsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListsFragment$1;-><init>(Lcom/perm/kate/FriendsListsFragment;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private selectListAndFinish(I)V
    .locals 2

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.list_id"

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 36
    invoke-static {}, Lcom/perm/utils/FriendsListsHelper;->getFriendsLists()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->getFriendsList()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c008a

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090212

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/FriendsListsFragment;->lv_list:Landroid/widget/ListView;

    .line 26
    iget-object p3, p0, Lcom/perm/kate/FriendsListsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->displayLists()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->lv_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->getFriendsList()V

    return-void
.end method
