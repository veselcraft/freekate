.class public Lcom/perm/kate/FollowersActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "FollowersActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/FollowersFragment;


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

    .line 53
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lcom/perm/kate/FollowersFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 17
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c007f

    .line 18
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "com.perm.kate.followers"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const v4, 0x7f0f0200

    goto :goto_0

    :cond_0
    const v4, 0x7f0f02d0

    .line 22
    :goto_0
    invoke-virtual {p0, v4}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 29
    new-instance v5, Lcom/perm/kate/FollowersFragment;

    invoke-direct {v5}, Lcom/perm/kate/FollowersFragment;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    .line 30
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 31
    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 32
    invoke-virtual {v5, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    iget-object p1, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {p1, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0900da

    .line 34
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v4, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 35
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 47
    invoke-virtual {p0, p1}, Lcom/perm/kate/FollowersActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Lcom/perm/kate/FollowersFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/perm/kate/FollowersActivity2;->fragment:Lcom/perm/kate/FollowersFragment;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/perm/kate/FollowersFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method
