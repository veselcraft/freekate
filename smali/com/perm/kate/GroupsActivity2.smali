.class public Lcom/perm/kate/GroupsActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "GroupsActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/GroupsFragment;


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

    .line 72
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Lcom/perm/kate/GroupsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    .line 18
    invoke-super/range {p0 .. p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const v1, 0x7f0c009e

    .line 25
    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const v1, 0x7f0f010d

    .line 26
    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.user_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    .line 31
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 32
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.select_group"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "select_group_all"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v10, "repost_post_id"

    invoke-virtual {v8, v10, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v13, "repost_post_owner_id"

    invoke-virtual {v8, v13, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v14, "com.perm.kate.wall_object"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_2

    if-nez v7, :cond_2

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 42
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v15

    .line 43
    invoke-virtual {v15}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v15

    move-object/from16 p1, v15

    .line 44
    new-instance v15, Lcom/perm/kate/GroupsFragment;

    invoke-direct {v15}, Lcom/perm/kate/GroupsFragment;-><init>()V

    iput-object v15, v0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    .line 45
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 46
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v15, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    invoke-virtual {v15, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    invoke-virtual {v15, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v15, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 50
    invoke-virtual {v15, v13, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 51
    invoke-virtual {v15, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 52
    iget-object v1, v0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v1, v15}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v1, 0x7f0900da

    .line 53
    iget-object v2, v0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 54
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupsActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lcom/perm/kate/GroupsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/perm/kate/GroupsFragment;->refreshInThread()V

    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/perm/kate/GroupsActivity2;->fragment:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/GroupsFragment;->onGroupSearch()V

    return-void
.end method
