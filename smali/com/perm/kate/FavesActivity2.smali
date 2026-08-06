.class public Lcom/perm/kate/FavesActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "FavesActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/FavesActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    invoke-virtual {v0, p1}, Lcom/perm/kate/FavesActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 48
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f03006d

    invoke-virtual {p0, v2}, Lcom/perm/kate/FavesActivity2;->setContentView(I)V

    .line 19
    const v2, 0x7f0701a2

    invoke-virtual {p0, v2}, Lcom/perm/kate/FavesActivity2;->setHeaderTitle(I)V

    .line 20
    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity2;->setupMenuButton()V

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity2;->setupRefreshButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/FavesActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 25
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 26
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lcom/perm/kate/FavesActivity;

    invoke-direct {v2}, Lcom/perm/kate/FavesActivity;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    .line 27
    const v2, 0x7f0e007e

    iget-object v3, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 28
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/perm/kate/FavesActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    invoke-virtual {v0, p1}, Lcom/perm/kate/FavesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    invoke-virtual {v0}, Lcom/perm/kate/FavesActivity;->onRefreshButton()V

    .line 35
    :cond_0
    return-void
.end method
