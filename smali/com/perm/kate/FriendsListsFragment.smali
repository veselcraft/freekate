.class public Lcom/perm/kate/FriendsListsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FriendsListsFragment.java"


# instance fields
.field private adapter:Lcom/perm/kate/FriendsListsAdapter;

.field private callback_friendsLists:Lcom/perm/kate/session/Callback;

.field private lv_list:Landroid/widget/ListView;

.field private mLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/perm/kate/FriendsListsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsListsFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/perm/kate/FriendsListsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsListsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/FriendsListsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsListsFragment;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->displayListsInUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FriendsListsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsListsFragment;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->displayLists()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/FriendsListsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsListsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsListsFragment;->selectListAndFinish(I)V

    return-void
.end method

.method private displayLists()V
    .locals 4

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->adapter:Lcom/perm/kate/FriendsListsAdapter;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/perm/kate/FriendsListsAdapter;

    iget-object v2, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/FriendsListsAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->adapter:Lcom/perm/kate/FriendsListsAdapter;

    .line 81
    iget-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FriendsListsFragment;->adapter:Lcom/perm/kate/FriendsListsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->adapter:Lcom/perm/kate/FriendsListsAdapter;

    iget-object v2, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/FriendsListsAdapter;->setData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayListsInUiThread()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FriendsListsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/FriendsListsFragment$3;-><init>(Lcom/perm/kate/FriendsListsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getFriendsList()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsListsFragment;->showProgressBar(Z)V

    .line 43
    new-instance v0, Lcom/perm/kate/FriendsListsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListsFragment$1;-><init>(Lcom/perm/kate/FriendsListsFragment;)V

    .line 48
    invoke-virtual {v0}, Lcom/perm/kate/FriendsListsFragment$1;->start()V

    .line 49
    return-void
.end method

.method private selectListAndFinish(I)V
    .locals 3
    .param p1, "list_id"    # I

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "com.perm.kate.list_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 109
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsListsFragment;->setHasOptionsMenu(Z)V

    .line 36
    invoke-static {}, Lcom/perm/utils/FriendsListsHelper;->getFriendsLists()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->getFriendsList()V

    .line 39
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e01a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->lv_list:Landroid/widget/ListView;

    .line 26
    iget-object v1, p0, Lcom/perm/kate/FriendsListsFragment;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FriendsListsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 28
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->displayLists()V

    .line 29
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->lv_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 116
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsFragment;->getFriendsList()V

    .line 120
    return-void
.end method
