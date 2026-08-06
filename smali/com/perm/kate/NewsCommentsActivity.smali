.class public Lcom/perm/kate/NewsCommentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewsCommentsActivity.java"

# interfaces
.implements Lcom/perm/kate/KTabActivity;
.implements Lcom/perm/kate/TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/NewsCommentsActivity$MyAdapter;
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
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 95
    new-instance v0, Lcom/perm/kate/NewsCommentsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsCommentsActivity$1;-><init>(Lcom/perm/kate/NewsCommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewsCommentsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewsCommentsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsCommentsActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method private highlightTab(Ljava/lang/String;)V
    .locals 3
    .param p1, "current_tab"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e018b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 107
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 108
    check-cast v0, Lcom/perm/kate/TabSelector;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Lcom/perm/kate/TabSelector;->selectTab(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsActivity;->getRefreshState()Z

    move-result v0

    .line 55
    .local v0, "refreshState":Z
    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsCommentsActivity;->showProgressBar(Z)V

    .line 56
    return-void
.end method

.method getRefreshState()Z
    .locals 3

    .prologue
    .line 59
    iget-object v2, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 60
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 61
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    iget-boolean v2, v2, Lcom/perm/kate/BaseFragment;->refreshState:Z

    .line 64
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsActivity;->finish()V

    .line 42
    :goto_0
    return-void

    .line 31
    :cond_0
    const v1, 0x7f0300bc

    invoke-virtual {p0, v1}, Lcom/perm/kate/NewsCommentsActivity;->setContentView(I)V

    .line 32
    const v1, 0x7f0703b7

    invoke-virtual {p0, v1}, Lcom/perm/kate/NewsCommentsActivity;->setHeaderTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsActivity;->setupRefreshButton()V

    .line 34
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v2, "All"

    invoke-virtual {v1, v2}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v2, "Online"

    invoke-virtual {v1, v2}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;-><init>(Lcom/perm/kate/NewsCommentsActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 38
    .local v0, "mAdapter":Lcom/perm/kate/NewsCommentsActivity$MyAdapter;
    const v1, 0x7f0e020b

    invoke-virtual {p0, v1}, Lcom/perm/kate/NewsCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 39
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 40
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

.method protected onRefreshButton()V
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 47
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 48
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    .line 50
    :cond_0
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->getTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "pos":I
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsActivity;->displayRefreshState()V

    .line 72
    return-void
.end method
