.class public Lcom/perm/kate/FriendsActivity;
.super Lcom/perm/kate/BaseFragment;
.source "FriendsActivity.java"

# interfaces
.implements Lcom/perm/kate/TabListener;


# instance fields
.field mPager:Landroidx/viewpager/widget/ViewPager;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field tabs:Lcom/perm/kate/tabs/TabsInfo;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 167
    new-instance v0, Lcom/perm/kate/FriendsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsActivity$1;-><init>(Lcom/perm/kate/FriendsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsActivity;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/FriendsActivity;->uid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/FriendsActivity;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method private hideUnusedTabs(Z)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090317

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/FriendsTabsFragment;

    .line 79
    invoke-virtual {v0, p1}, Lcom/perm/kate/FriendsTabsFragment;->setIsMe(Z)V

    return-void
.end method

.method private highlightTab(Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090317

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    check-cast v0, Lcom/perm/kate/TabSelector;

    invoke-interface {v0, p1}, Lcom/perm/kate/TabSelector;->selectTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private selectInitialTab()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/FriendsActivity;->selectTab(Ljava/lang/String;)V

    return-void
.end method

.method private selectTab(Ljava/lang/String;)V
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsActivity;->onTabSelected(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->getRefreshState()Z

    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 200
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method getRefreshState()Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 92
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 93
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0

    :cond_1
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0085

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "com.perm.kate.user_id"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/FriendsActivity;->uid:Ljava/lang/String;

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 42
    sget-object p2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/FriendsActivity;->uid:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/FriendsActivity;->uid:Ljava/lang/String;

    sget-object p3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 46
    invoke-direct {p0, p2}, Lcom/perm/kate/FriendsActivity;->hideUnusedTabs(Z)V

    .line 48
    iget-object p3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "All"

    invoke-virtual {p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 49
    iget-object p3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "Online"

    invoke-virtual {p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 51
    iget-object p3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "Mutual"

    invoke-virtual {p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 53
    iget-object p3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "Requests"

    invoke-virtual {p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 55
    iget-object p3, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "RequestsOutgoing"

    invoke-virtual {p3, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 57
    iget-object p2, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string p3, "Suggestions"

    invoke-virtual {p2, p3}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 59
    :cond_4
    new-instance p2, Lcom/perm/kate/FriendsActivity$MyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/perm/kate/FriendsActivity$MyAdapter;-><init>(Lcom/perm/kate/FriendsActivity;Landroidx/fragment/app/FragmentManager;)V

    const p3, 0x7f090261

    .line 60
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager;

    iput-object p3, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 61
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 62
    iget-object p3, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 64
    invoke-direct {p0}, Lcom/perm/kate/FriendsActivity;->selectInitialTab()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 223
    iput-object v0, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 225
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 213
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 217
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 72
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->getTabIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 105
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity;->displayRefreshState()V

    return-void
.end method
