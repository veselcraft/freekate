.class public Lcom/perm/kate/FriendsActivity;
.super Lcom/perm/kate/BaseFragment;
.source "FriendsActivity.java"

# interfaces
.implements Lcom/perm/kate/TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/FriendsActivity$MyAdapter;
    }
.end annotation


# instance fields
.field mPager:Landroid/support/v4/view/ViewPager;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field tabs:Lcom/perm/kate/tabs/TabsInfo;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 164
    new-instance v0, Lcom/perm/kate/FriendsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsActivity$1;-><init>(Lcom/perm/kate/FriendsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/FriendsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method private hideUnusedTabs(Z)V
    .locals 3
    .param p1, "is_me"    # Z

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e018b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/FriendsTabsFragment;

    move-object v0, v1

    check-cast v0, Lcom/perm/kate/FriendsTabsFragment;

    .line 76
    .local v0, "tabs":Lcom/perm/kate/FriendsTabsFragment;
    invoke-virtual {v0, p1}, Lcom/perm/kate/FriendsTabsFragment;->setIsMe(Z)V

    .line 77
    return-void
.end method

.method private highlightTab(Ljava/lang/String;)V
    .locals 3
    .param p1, "current_tab"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e018b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 176
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 177
    check-cast v0, Lcom/perm/kate/TabSelector;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Lcom/perm/kate/TabSelector;->selectTab(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method private selectInitialTab()V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "current_tab"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "current_tab":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/FriendsActivity;->selectTab(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectTab(Ljava/lang/String;)V
    .locals 0
    .param p1, "current_tab"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsActivity;->onTabSelected(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsActivity;->highlightTab(Ljava/lang/String;)V

    .line 190
    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->getRefreshState()Z

    move-result v0

    .line 81
    .local v0, "refreshState":Z
    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsActivity;->showProgressBar(Z)V

    .line 82
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 194
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 196
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 197
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 201
    .end local v0    # "pos":I
    .end local v1    # "tab":Lcom/perm/kate/tabs/TabInfo;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method getRefreshState()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 89
    .local v0, "pos":I
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 90
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v3, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 91
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    iget-boolean v2, v2, Lcom/perm/kate/BaseFragment;->refreshState:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const v3, 0x7f030079

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 39
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/FriendsActivity;->uid:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->uid:Ljava/lang/String;

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 43
    .local v0, "is_me":Z
    invoke-direct {p0, v0}, Lcom/perm/kate/FriendsActivity;->hideUnusedTabs(Z)V

    .line 45
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v4, "All"

    invoke-virtual {v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v4, "Online"

    invoke-virtual {v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 47
    if-nez v0, :cond_0

    .line 48
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v4, "Mutual"

    invoke-virtual {v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 49
    :cond_0
    if-eqz v0, :cond_1

    .line 50
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v4, "Requests"

    invoke-virtual {v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 51
    :cond_1
    if-eqz v0, :cond_2

    .line 52
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v4, "RequestsOutgoing"

    invoke-virtual {v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 53
    :cond_2
    if-eqz v0, :cond_3

    .line 54
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v4, "Suggestions"

    invoke-virtual {v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 56
    :cond_3
    new-instance v1, Lcom/perm/kate/FriendsActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/perm/kate/FriendsActivity$MyAdapter;-><init>(Lcom/perm/kate/FriendsActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 57
    .local v1, "mAdapter":Lcom/perm/kate/FriendsActivity$MyAdapter;
    const v3, 0x7f0e01a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 58
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/perm/kate/FriendsActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 59
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 61
    invoke-direct {p0}, Lcom/perm/kate/FriendsActivity;->selectInitialTab()V

    .line 62
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 220
    iput-object v0, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 222
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "result_options_item_selected":Z
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 209
    .local v0, "pos":I
    iget-object v3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v2

    .line 210
    .local v2, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v3, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v3, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 212
    :cond_0
    if-eqz v1, :cond_1

    .line 213
    const/4 v3, 0x1

    .line 214
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onRefreshButton()V
    .locals 3

    .prologue
    .line 67
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 68
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 69
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    .line 71
    :cond_0
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->getTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 102
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->displayRefreshState()V

    goto :goto_0
.end method
