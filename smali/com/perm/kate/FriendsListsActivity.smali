.class public Lcom/perm/kate/FriendsListsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "FriendsListsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;
    }
.end annotation


# instance fields
.field private mPager:Landroid/support/v4/view/ViewPager;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private tabs:Lcom/perm/kate/tabs/TabsInfo;

.field private uid_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 77
    new-instance v0, Lcom/perm/kate/FriendsListsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListsActivity$1;-><init>(Lcom/perm/kate/FriendsListsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/tabs/TabsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsListsActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsListsActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsActivity;->makeFriendsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsListsActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsActivity;->makeListsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method private makeFriendsFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .prologue
    .line 85
    new-instance v1, Lcom/perm/kate/FriendsFragment;

    invoke-direct {v1}, Lcom/perm/kate/FriendsFragment;-><init>()V

    .line 86
    .local v1, "friendsFragment":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/FriendsListsActivity;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "com.perm.kate.select_user"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v1
.end method

.method private makeListsFragment()Lcom/perm/kate/BaseFragment;
    .locals 2

    .prologue
    .line 94
    new-instance v1, Lcom/perm/kate/FriendsListsFragment;

    invoke-direct {v1}, Lcom/perm/kate/FriendsListsFragment;-><init>()V

    .line 95
    .local v1, "messagesFragment":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v1
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsActivity;->getRefreshState()Z

    move-result v0

    .line 63
    .local v0, "refreshState":Z
    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsListsActivity;->showProgressBar(Z)V

    .line 64
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 136
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 138
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 139
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 143
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

    .line 67
    iget-object v3, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 70
    .local v0, "pos":I
    iget-object v3, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 71
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v3, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 72
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    iget-boolean v2, v2, Lcom/perm/kate/BaseFragment;->refreshState:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->uid_str:Ljava/lang/String;

    .line 30
    const v2, 0x7f0300a4

    invoke-virtual {p0, v2}, Lcom/perm/kate/FriendsListsActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f0702bf

    invoke-virtual {p0, v2}, Lcom/perm/kate/FriendsListsActivity;->setHeaderTitle(I)V

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsActivity;->setupRefreshButton()V

    .line 33
    const v2, 0x7f0e0228

    invoke-virtual {p0, v2}, Lcom/perm/kate/FriendsListsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/PagerTitleStrip;

    .line 34
    .local v1, "pagerTitleStrip":Landroid/support/v4/view/PagerTitleStrip;
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v3, "lists"

    const v4, 0x7f0702be

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 35
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v3, "friends"

    const v4, 0x7f0701d4

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 36
    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    const v3, 0x7f0a00c4

    if-eq v2, v3, :cond_0

    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    const v3, 0x7f0a00c8

    if-eq v2, v3, :cond_0

    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    const v3, 0x7f0a00ca

    if-eq v2, v3, :cond_0

    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    const v3, 0x7f0a00c9

    if-ne v2, v3, :cond_2

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->setTextColor(I)V

    .line 41
    :goto_0
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->setGravity(I)V

    .line 42
    sget-boolean v2, Lcom/perm/kate/FriendsListsActivity;->IsCustomTheme:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v2}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundColor(I)V

    .line 44
    :cond_1
    new-instance v0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;-><init>(Lcom/perm/kate/FriendsListsActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 45
    .local v0, "mAdapter":Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;
    const v2, 0x7f0e020b

    invoke-virtual {p0, v2}, Lcom/perm/kate/FriendsListsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 46
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/perm/kate/FriendsListsActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 48
    return-void

    .line 40
    .end local v0    # "mAdapter":Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->setTextColor(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsActivity;->showMenuButton()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 151
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 152
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 157
    .end local v0    # "pos":I
    .end local v1    # "tab":Lcom/perm/kate/tabs/TabInfo;
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 130
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsListsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 131
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 55
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 56
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    goto :goto_0
.end method
