.class public Lcom/perm/kate/FavesActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "FavesActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/FavesActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/perm/kate/FavesActivity;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0077

    .line 18
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01ff

    .line 19
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 20
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/perm/kate/FavesActivity;

    invoke-direct {v0}, Lcom/perm/kate/FavesActivity;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    const v1, 0x7f0900da

    .line 27
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/perm/kate/FavesActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lcom/perm/kate/FavesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/perm/kate/FavesActivity2;->fragment:Lcom/perm/kate/FavesActivity;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/perm/kate/FavesActivity;->onRefreshButton()V

    :cond_0
    return-void
.end method
