.class public Lcom/perm/kate/FavesActivity;
.super Lcom/perm/kate/BaseFragment;
.source "FavesActivity.java"

# interfaces
.implements Lcom/perm/kate/TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/FavesActivity$MyAdapter;
    }
.end annotation


# instance fields
.field mPager:Landroid/support/v4/view/ViewPager;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field tabs:Lcom/perm/kate/tabs/TabsInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 28
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 75
    new-instance v0, Lcom/perm/kate/FavesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavesActivity$1;-><init>(Lcom/perm/kate/FavesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/FavesActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FavesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FavesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/FavesActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method private highlightTab(Ljava/lang/String;)V
    .locals 3
    .param p1, "current_tab"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e018b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 86
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 87
    check-cast v0, Lcom/perm/kate/TabSelector;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Lcom/perm/kate/TabSelector;->selectTab(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity;->getRefreshState()Z

    move-result v0

    .line 60
    .local v0, "refreshState":Z
    invoke-virtual {p0, v0}, Lcom/perm/kate/FavesActivity;->showProgressBar(Z)V

    .line 61
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 94
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 95
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 99
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

    .line 65
    iget-object v3, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v2

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 68
    .local v0, "pos":I
    iget-object v3, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 69
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v3, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 70
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
    .line 34
    const v2, 0x7f03006e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v3, "people"

    const v4, 0x7f07042d

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 36
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v3, "photos"

    const v4, 0x7f07042b

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 37
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v3, "videos"

    const v4, 0x7f07042e

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 38
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v3, "posts"

    const v4, 0x7f07042c

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 39
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v3, "links"

    const v4, 0x7f07042a

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 41
    new-instance v0, Lcom/perm/kate/FavesActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/FavesActivity$MyAdapter;-><init>(Lcom/perm/kate/FavesActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 42
    .local v0, "mAdapter":Lcom/perm/kate/FavesActivity$MyAdapter;
    const v2, 0x7f0e018c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 43
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 44
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/perm/kate/FavesActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 45
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "result_options_item_selected":Z
    iget-object v3, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 106
    .local v0, "pos":I
    iget-object v3, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v2

    .line 107
    .local v2, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v3, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v3, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 109
    :cond_0
    if-eqz v1, :cond_1

    .line 110
    const/4 v3, 0x1

    .line 111
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
    .line 50
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 53
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 54
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    goto :goto_0
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->getTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 120
    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity;->displayRefreshState()V

    goto :goto_0
.end method
