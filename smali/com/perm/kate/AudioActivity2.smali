.class public Lcom/perm/kate/AudioActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "AudioActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/AudioFragment;


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

    .line 70
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/perm/kate/AudioFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onAlbumsButton()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->onAlbums()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 18
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c002b

    .line 25
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04ea

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 29
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupPlayerButton()V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "playlist_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v8, 0x0

    const-string v9, "com.perm.kate.select_audio"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v10, "target_audio"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    cmp-long v11, v6, v4

    if-nez v11, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupAlbumsButton()V

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 43
    new-instance v5, Lcom/perm/kate/AudioFragment;

    invoke-direct {v5}, Lcom/perm/kate/AudioFragment;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    .line 44
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 45
    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 46
    invoke-virtual {v5, v9, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v5, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "access_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {p1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0900da

    .line 51
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v4, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/perm/kate/AudioActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    .line 97
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lcom/perm/kate/AudioFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->onAudioSearch()V

    :cond_0
    return-void
.end method
