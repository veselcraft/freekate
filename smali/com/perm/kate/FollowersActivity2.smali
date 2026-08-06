.class public Lcom/perm/kate/FollowersActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "FollowersActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/FollowersFragment;


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
    .line 53
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/FollowersFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 55
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v6, 0x7f030074

    invoke-virtual {p0, v6}, Lcom/perm/kate/FollowersActivity2;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/perm/kate/FollowersActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.user_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 20
    .local v4, "owner_id":J
    invoke-virtual {p0}, Lcom/perm/kate/FollowersActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.followers"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 22
    .local v3, "is_followers":Z
    if-eqz v3, :cond_0

    const v6, 0x7f0701a4

    :goto_0
    invoke-virtual {p0, v6}, Lcom/perm/kate/FollowersActivity2;->setHeaderTitle(I)V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/FollowersActivity2;->setupMenuButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/FollowersActivity2;->setupRefreshButton()V

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/FollowersActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 28
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 29
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v6, Lcom/perm/kate/FollowersFragment;

    invoke-direct {v6}, Lcom/perm/kate/FollowersFragment;-><init>()V

    iput-object v6, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "com.perm.kate.user_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 32
    const-string v6, "com.perm.kate.followers"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    iget-object v6, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v6, v0}, Lcom/perm/kate/FollowersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    const v6, 0x7f0e007e

    iget-object v7, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 36
    return-void

    .line 22
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const v6, 0x7f070277

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 47
    invoke-virtual {p0, p1}, Lcom/perm/kate/FollowersActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/FollowersFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v0}, Lcom/perm/kate/FollowersFragment;->onRefreshButton()V

    .line 42
    :cond_0
    return-void
.end method
