.class public Lcom/perm/kate/AlbumsActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "AlbumsActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/AlbumsFragment;


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

    .line 60
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Lcom/perm/kate/AlbumsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 17
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c0025

    .line 24
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f050d

    .line 25
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "com.perm.kate.select_mode"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.select_for_move"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 34
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 35
    new-instance v7, Lcom/perm/kate/AlbumsFragment;

    invoke-direct {v7}, Lcom/perm/kate/AlbumsFragment;-><init>()V

    iput-object v7, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    .line 36
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-virtual {v7, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    invoke-virtual {v7, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v7, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    iget-object p1, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {p1, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0900da

    .line 41
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v5, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 42
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/perm/kate/AlbumsActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Lcom/perm/kate/AlbumsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/perm/kate/AlbumsFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method
