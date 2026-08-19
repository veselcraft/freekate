.class public Lcom/perm/kate/VideoActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "VideoActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/VideoFragment;


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

    .line 59
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lcom/perm/kate/VideoFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onAlbumsButton()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->onAlbums()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 17
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0131

    .line 18
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f051d

    .line 19
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 20
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "album_id"

    const-wide/16 v1, -0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupAlbumsButton()V

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v1, 0x0

    const-string v5, "com.perm.kate.user_id"

    invoke-virtual {p1, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v6, "com.perm.kate.select_video"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 34
    new-instance v7, Lcom/perm/kate/VideoFragment;

    invoke-direct {v7}, Lcom/perm/kate/VideoFragment;-><init>()V

    iput-object v7, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    .line 35
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    invoke-virtual {v7, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v7, v6, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    iget-object p1, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {p1, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0900da

    .line 40
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 41
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 53
    invoke-virtual {p0, p1}, Lcom/perm/kate/VideoActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Lcom/perm/kate/VideoFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/perm/kate/VideoActivity2;->fragment:Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->onVideoSearch()V

    :cond_0
    return-void
.end method
