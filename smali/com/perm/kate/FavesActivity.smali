.class public Lcom/perm/kate/FavesActivity;
.super Lcom/perm/kate/BaseFragment;
.source "FavesActivity.java"

# interfaces
.implements Lcom/perm/kate/TabListener;


# instance fields
.field mPager:Landroidx/viewpager/widget/ViewPager;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field tabs:Lcom/perm/kate/tabs/TabsInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 83
    new-instance v0, Lcom/perm/kate/FavesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FavesActivity$1;-><init>(Lcom/perm/kate/FavesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/FavesActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FavesActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/FavesActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method private highlightTab(Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090317

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    check-cast v0, Lcom/perm/kate/TabSelector;

    invoke-interface {v0, p1}, Lcom/perm/kate/TabSelector;->selectTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportFaveTab()V
    .locals 5

    .line 142
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    .line 143
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x270f

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "tab"

    .line 146
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    iget-object v3, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FAVE_TAB"

    .line 147
    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity;->getRefreshState()Z

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 103
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method getRefreshState()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 76
    iget-object v2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 78
    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0

    :cond_1
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0078

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "people"

    const v0, 0x7f0f04c1

    invoke-virtual {p2, p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 41
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "groups"

    const v0, 0x7f0f010d

    invoke-virtual {p2, p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 42
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "photos"

    const v0, 0x7f0f04bf

    invoke-virtual {p2, p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 43
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "fave_posts"

    const v0, 0x7f0f04c0

    invoke-virtual {p2, p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 44
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "posts"

    invoke-virtual {p2, p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 45
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "fave_videos"

    const v0, 0x7f0f051d

    invoke-virtual {p2, p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 46
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "videos"

    invoke-virtual {p2, p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 47
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "links"

    const v0, 0x7f0f04be

    invoke-virtual {p2, p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 49
    new-instance p2, Lcom/perm/kate/FavesActivity$MyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/perm/kate/FavesActivity$MyAdapter;-><init>(Lcom/perm/kate/FavesActivity;Landroidx/fragment/app/FragmentManager;)V

    const p3, 0x7f090262

    .line 50
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 51
    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 52
    iget-object p2, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p3, p0, Lcom/perm/kate/FavesActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 115
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 119
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 62
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/perm/kate/FavesActivity;->reportFaveTab()V

    :cond_0
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->getTabIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavesActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 128
    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity;->displayRefreshState()V

    return-void
.end method
