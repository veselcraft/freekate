.class public Lcom/perm/kate/DialogsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "DialogsActivity.java"


# instance fields
.field private fragment:Lcom/perm/kate/BaseFragment;

.field group_longpoll:Lcom/perm/kate/LongPoll;

.field i_started_longpoll:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/DialogsActivity;->i_started_longpoll:Z

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 92
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v6, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/DialogsActivity;->finish()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/DialogsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "group_id"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 29
    .local v4, "group_id":J
    const v6, 0x7f03005b

    invoke-virtual {p0, v6}, Lcom/perm/kate/DialogsActivity;->setContentView(I)V

    .line 31
    cmp-long v6, v4, v8

    if-nez v6, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/DialogsActivity;->setupMenuButton()V

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/DialogsActivity;->setupRefreshButton()V

    .line 34
    const v6, 0x7f07008c

    invoke-virtual {p0, v6}, Lcom/perm/kate/DialogsActivity;->setHeaderTitle(I)V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/DialogsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 37
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 38
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v6, Lcom/perm/kate/MessagesFragment;

    invoke-direct {v6}, Lcom/perm/kate/MessagesFragment;-><init>()V

    iput-object v6, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "group_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    iget-object v6, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v6, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    const v6, 0x7f0e0124

    iget-object v7, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 45
    cmp-long v6, v4, v8

    if-nez v6, :cond_3

    .line 46
    sget-object v6, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v6}, Lcom/perm/kate/LongPoll;->isStarted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 47
    sget-object v6, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v6}, Lcom/perm/kate/Online;->start()V

    .line 48
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/perm/kate/DialogsActivity;->i_started_longpoll:Z

    .line 52
    :cond_3
    cmp-long v6, v4, v8

    if-eqz v6, :cond_4

    .line 53
    new-instance v6, Lcom/perm/kate/LongPoll;

    invoke-direct {v6, v4, v5}, Lcom/perm/kate/LongPoll;-><init>(J)V

    iput-object v6, p0, Lcom/perm/kate/DialogsActivity;->group_longpoll:Lcom/perm/kate/LongPoll;

    .line 54
    iget-object v6, p0, Lcom/perm/kate/DialogsActivity;->group_longpoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v6}, Lcom/perm/kate/LongPoll;->start()V

    .line 58
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/perm/kate/KApplication;->isPackageNew()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_pro:Z

    if-nez v6, :cond_0

    .line 61
    invoke-static {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->with(Landroid/app/Activity;)Lfr/nicolaspomepuy/discreetapprate/AppRate;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount(I)Lfr/nicolaspomepuy/discreetapprate/AppRate;

    move-result-object v6

    invoke-virtual {v6}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->checkAndShow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 62
    :catch_0
    move-exception v3

    .line 63
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 77
    invoke-virtual {p0, p1}, Lcom/perm/kate/DialogsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onPause()V

    .line 99
    invoke-virtual {p0}, Lcom/perm/kate/DialogsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-boolean v0, p0, Lcom/perm/kate/DialogsActivity;->i_started_longpoll:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->group_longpoll:Lcom/perm/kate/LongPoll;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->group_longpoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->stop()V

    .line 108
    :cond_1
    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    .line 72
    :cond_0
    return-void
.end method
