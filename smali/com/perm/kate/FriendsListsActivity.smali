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
.field private mPager:Landroidx/viewpager/widget/ViewPager;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private tabs:Lcom/perm/kate/tabs/TabsInfo;

.field private uid_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 77
    new-instance v0, Lcom/perm/kate/FriendsListsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListsActivity$1;-><init>(Lcom/perm/kate/FriendsListsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/tabs/TabsInfo;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/BaseFragment;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsActivity;->makeFriendsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/BaseFragment;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/FriendsListsActivity;->makeListsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method private makeFriendsFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .line 85
    new-instance v0, Lcom/perm/kate/FriendsFragment;

    invoke-direct {v0}, Lcom/perm/kate/FriendsFragment;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->uid_str:Ljava/lang/String;

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.perm.kate.select_user"

    const/4 v3, 0x1

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private makeListsFragment()Lcom/perm/kate/BaseFragment;
    .locals 2

    .line 94
    new-instance v0, Lcom/perm/kate/FriendsListsFragment;

    invoke-direct {v0}, Lcom/perm/kate/FriendsListsFragment;-><init>()V

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsActivity;->getRefreshState()Z

    move-result v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 139
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method getRefreshState()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 70
    iget-object v2, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 72
    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0

    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/FriendsListsActivity;->uid_str:Ljava/lang/String;

    const p1, 0x7f0c00b1

    .line 30
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f031b

    .line 31
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f090263

    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/PagerTitleStrip;

    .line 34
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v1, "lists"

    const v2, 0x7f0f031a

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 35
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v1, "friends"

    const v2, 0x7f0f0230

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 36
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f1000cf

    if-eq v0, v1, :cond_1

    const v1, 0x7f1000d7

    if-eq v0, v1, :cond_1

    const v1, 0x7f1000db

    if-eq v0, v1, :cond_1

    const v1, 0x7f1000d9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextColor(I)V

    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextColor(I)V

    :goto_1
    const/16 v0, 0x10

    .line 41
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->setGravity(I)V

    .line 42
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 44
    :cond_2
    new-instance p1, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;-><init>(Lcom/perm/kate/FriendsListsActivity;Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x7f090260

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 46
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 47
    iget-object p1, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->showMenuButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 152
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 157
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 129
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 130
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsListsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/perm/kate/FriendsListsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 56
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    :cond_1
    return-void
.end method
