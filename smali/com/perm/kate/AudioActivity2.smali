.class public Lcom/perm/kate/AudioActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "AudioActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/AudioFragment;

.field private uid:Ljava/lang/Long;


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
    .line 62
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/AudioFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 64
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAlbumsButton()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->onAlbums()V

    .line 84
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v5, 0x7f030029

    invoke-virtual {p0, v5}, Lcom/perm/kate/AudioActivity2;->setContentView(I)V

    .line 22
    const v5, 0x7f07003c

    invoke-virtual {p0, v5}, Lcom/perm/kate/AudioActivity2;->setHeaderTitle(I)V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->setupMenuButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->setupRefreshButton()V

    .line 25
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->setupSearchButton()V

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->setupPlayerButton()V

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.owner_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/AudioActivity2;->uid:Ljava/lang/Long;

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.select_audio"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 29
    .local v3, "select_audio":Z
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "target_audio"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "target_audio":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->setupAlbumsButton()V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/AudioActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 36
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 37
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v5, Lcom/perm/kate/AudioFragment;

    invoke-direct {v5}, Lcom/perm/kate/AudioFragment;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "com.perm.kate.owner_id"

    iget-object v6, p0, Lcom/perm/kate/AudioActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    const-string v5, "com.perm.kate.select_audio"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v5, "target_audio"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v5, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v5, v0}, Lcom/perm/kate/AudioFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    const v5, 0x7f0e007e

    iget-object v6, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 44
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/perm/kate/AudioActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    .line 89
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/AudioFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->onRefreshButton()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/perm/kate/AudioActivity2;->fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->onAudioSearch()V

    .line 78
    :cond_0
    return-void
.end method
