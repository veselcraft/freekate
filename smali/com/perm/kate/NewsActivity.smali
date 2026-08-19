.class public Lcom/perm/kate/NewsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewsActivity.java"


# instance fields
.field private fragment:Lcom/perm/kate/NewsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Lcom/perm/kate/NewsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00cd

    .line 19
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f036f

    .line 20
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupComposeButton()V

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/perm/kate/NewsFragment;

    invoke-direct {v0}, Lcom/perm/kate/NewsFragment;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    const v1, 0x7f0900da

    .line 29
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Lcom/perm/kate/NewsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 61
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 41
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/perm/kate/NewsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/perm/kate/NewsFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 3

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_news"

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
