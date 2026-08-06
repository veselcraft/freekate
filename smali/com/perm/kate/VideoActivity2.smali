.class public Lcom/perm/kate/VideoActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "VideoActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/VideoFragment;


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
    .line 57
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/VideoFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 59
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAlbumsButton()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->onAlbums()V

    .line 79
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 17
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v6, 0x7f030111

    invoke-virtual {p0, v6}, Lcom/perm/kate/VideoActivity2;->setContentView(I)V

    .line 19
    const v6, 0x7f070505

    invoke-virtual {p0, v6}, Lcom/perm/kate/VideoActivity2;->setHeaderTitle(I)V

    .line 20
    invoke-virtual {p0}, Lcom/perm/kate/VideoActivity2;->setupMenuButton()V

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/VideoActivity2;->setupRefreshButton()V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/VideoActivity2;->setupSearchButton()V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/VideoActivity2;->setupAlbumsButton()V

    .line 25
    invoke-virtual {p0}, Lcom/perm/kate/VideoActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.user_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 26
    .local v3, "owner_id":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/perm/kate/VideoActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.user_videos"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 27
    .local v5, "user_videos":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/perm/kate/VideoActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.select_video"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 30
    .local v4, "select_video":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/perm/kate/VideoActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 31
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 32
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v6, Lcom/perm/kate/VideoFragment;

    invoke-direct {v6}, Lcom/perm/kate/VideoFragment;-><init>()V

    iput-object v6, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "com.perm.kate.user_id"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 35
    const-string v6, "com.perm.kate.user_videos"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    const-string v6, "com.perm.kate.select_video"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    iget-object v6, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v6, v0}, Lcom/perm/kate/VideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    const v6, 0x7f0e007e

    iget-object v7, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 39
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/perm/kate/VideoActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/VideoFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    .line 46
    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->onVideoSearch()V

    .line 73
    :cond_0
    return-void
.end method
