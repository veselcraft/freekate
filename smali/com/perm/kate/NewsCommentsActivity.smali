.class public Lcom/perm/kate/NewsCommentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewsCommentsActivity.java"

# interfaces
.implements Lcom/perm/kate/TabListener;
.implements Lcom/perm/kate/KTabActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/NewsCommentsActivity$MyAdapter;
    }
.end annotation


# instance fields
.field mPager:Landroidx/viewpager/widget/ViewPager;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field tabs:Lcom/perm/kate/tabs/TabsInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 95
    new-instance v0, Lcom/perm/kate/NewsCommentsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsCommentsActivity$1;-><init>(Lcom/perm/kate/NewsCommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewsCommentsActivity;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/perm/kate/NewsCommentsActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method private highlightTab(Ljava/lang/String;)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090317

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    check-cast v0, Lcom/perm/kate/TabSelector;

    invoke-interface {v0, p1}, Lcom/perm/kate/TabSelector;->selectTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsActivity;->getRefreshState()Z

    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method getRefreshState()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 62
    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c00cf

    .line 31
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0437

    .line 32
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 34
    iget-object p1, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "All"

    invoke-virtual {p1, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "Online"

    invoke-virtual {p1, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 37
    new-instance p1, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;-><init>(Lcom/perm/kate/NewsCommentsActivity;Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x7f090260

    .line 38
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 39
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 40
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 48
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->getTabIndex(Ljava/lang/String;)I

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/NewsCommentsActivity;->displayRefreshState()V

    return-void
.end method
