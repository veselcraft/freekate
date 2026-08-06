.class public Lcom/perm/kate/GroupsActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "GroupsActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/GroupsFragment;

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
    .line 68
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/GroupsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v10, 0x7f030091

    invoke-virtual {p0, v10}, Lcom/perm/kate/GroupsActivity2;->setContentView(I)V

    .line 22
    const v10, 0x7f0700c4

    invoke-virtual {p0, v10}, Lcom/perm/kate/GroupsActivity2;->setHeaderTitle(I)V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->setupMenuButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->setupRefreshButton()V

    .line 25
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.perm.kate.user_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/perm/kate/GroupsActivity2;->uid:Ljava/lang/Long;

    .line 26
    iget-object v10, p0, Lcom/perm/kate/GroupsActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 27
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v10}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/perm/kate/GroupsActivity2;->uid:Ljava/lang/Long;

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.perm.kate.select_group"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 29
    .local v3, "select_group":Z
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "select_group_all"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 30
    .local v8, "select_group_all":Z
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "repost_post_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 31
    .local v4, "repost_post_id":J
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "repost_post_owner_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 32
    .local v6, "repost_post_owner_id":J
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.perm.kate.wall_object"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 34
    .local v9, "wall_object":Ljava/lang/String;
    if-nez v3, :cond_1

    if-nez v8, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->setupSearchButton()V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/GroupsActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 39
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 40
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v10, Lcom/perm/kate/GroupsFragment;

    invoke-direct {v10}, Lcom/perm/kate/GroupsFragment;-><init>()V

    iput-object v10, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "b":Landroid/os/Bundle;
    const-string v10, "com.perm.kate.user_id"

    iget-object v11, p0, Lcom/perm/kate/GroupsActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v0, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    const-string v10, "com.perm.kate.select_group"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string v10, "select_group_all"

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    const-string v10, "repost_post_id"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 46
    const-string v10, "repost_post_owner_id"

    invoke-virtual {v0, v10, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    const-string v10, "com.perm.kate.wall_object"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v10, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v10, v0}, Lcom/perm/kate/GroupsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    const v10, 0x7f0e007e

    iget-object v11, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v2, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 50
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 62
    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupsActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/GroupsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/GroupsFragment;->refreshInThread()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/GroupsFragment;->onGroupSearch()V

    .line 83
    return-void
.end method
