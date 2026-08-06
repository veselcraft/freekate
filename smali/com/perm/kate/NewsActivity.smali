.class public Lcom/perm/kate/NewsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewsActivity.java"


# instance fields
.field private fragment:Lcom/perm/kate/NewsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/NewsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v2, 0x7f0300ba

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewsActivity;->setContentView(I)V

    .line 20
    const v2, 0x7f07030d

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewsActivity;->setHeaderTitle(I)V

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/NewsActivity;->setupMenuButton()V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/NewsActivity;->setupRefreshButton()V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/NewsActivity;->setupSearchButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/NewsActivity;->setupComposeButton()V

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/NewsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 27
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 28
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lcom/perm/kate/NewsFragment;

    invoke-direct {v2}, Lcom/perm/kate/NewsFragment;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    .line 29
    const v2, 0x7f0e007e

    iget-object v3, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 30
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 31
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "res":Z
    iget-object v1, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1, p1}, Lcom/perm/kate/NewsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 59
    :cond_0
    if-eqz v0, :cond_1

    .line 60
    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 41
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 42
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/perm/kate/NewsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/perm/kate/NewsActivity;->fragment:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NewsFragment;->onRefreshButton()V

    .line 37
    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_news"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/perm/kate/NewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
