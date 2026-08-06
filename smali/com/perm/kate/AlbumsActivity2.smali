.class public Lcom/perm/kate/AlbumsActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "AlbumsActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/AlbumsFragment;

.field private uid:Ljava/lang/Long;


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
    .line 62
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/AlbumsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 64
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v5, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsActivity2;->finish()V

    .line 45
    :goto_0
    return-void

    .line 26
    :cond_0
    const v5, 0x7f030023

    invoke-virtual {p0, v5}, Lcom/perm/kate/AlbumsActivity2;->setContentView(I)V

    .line 27
    const v5, 0x7f07047e

    invoke-virtual {p0, v5}, Lcom/perm/kate/AlbumsActivity2;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsActivity2;->setupMenuButton()V

    .line 29
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsActivity2;->setupRefreshButton()V

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.owner_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/AlbumsActivity2;->uid:Ljava/lang/Long;

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.select_mode"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 32
    .local v4, "select_mode":Z
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.select_for_move"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 35
    .local v3, "select_for_move":Z
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 36
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 37
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v5, Lcom/perm/kate/AlbumsFragment;

    invoke-direct {v5}, Lcom/perm/kate/AlbumsFragment;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "com.perm.kate.owner_id"

    iget-object v6, p0, Lcom/perm/kate/AlbumsActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    const-string v5, "com.perm.kate.select_mode"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v5, "com.perm.kate.select_for_move"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    iget-object v5, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v5, v0}, Lcom/perm/kate/AlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    const v5, 0x7f0e007e

    iget-object v6, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 44
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/perm/kate/AlbumsActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/AlbumsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/perm/kate/AlbumsActivity2;->fragment:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AlbumsFragment;->onRefreshButton()V

    .line 51
    :cond_0
    return-void
.end method
