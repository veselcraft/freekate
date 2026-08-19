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

    .line 11
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/perm/kate/DialogsActivity;->i_started_longpoll:Z

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const p1, 0x7f0c0065

    .line 29
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    cmp-long p1, v3, v1

    if-nez p1, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f0f00c3

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 38
    new-instance v5, Lcom/perm/kate/MessagesFragment;

    invoke-direct {v5}, Lcom/perm/kate/MessagesFragment;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    .line 39
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 40
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f090249

    .line 42
    iget-object v5, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {p1, v0, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    cmp-long p1, v3, v1

    if-nez p1, :cond_2

    .line 46
    sget-object p1, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {p1}, Lcom/perm/kate/LongPoll;->isStarted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 47
    sget-object p1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {p1}, Lcom/perm/kate/Online;->start()V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/perm/kate/DialogsActivity;->i_started_longpoll:Z

    :cond_2
    cmp-long p1, v3, v1

    if-eqz p1, :cond_3

    .line 53
    new-instance p1, Lcom/perm/kate/LongPoll;

    invoke-direct {p1, v3, v4}, Lcom/perm/kate/LongPoll;-><init>(J)V

    iput-object p1, p0, Lcom/perm/kate/DialogsActivity;->group_longpoll:Lcom/perm/kate/LongPoll;

    .line 54
    invoke-virtual {p1}, Lcom/perm/kate/LongPoll;->start()V

    .line 58
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/perm/kate/KApplication;->isPackageNew()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 59
    sget-boolean p1, Lcom/perm/kate/KApplication;->is_pro:Z

    if-nez p1, :cond_4

    .line 61
    invoke-static {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->with(Landroid/app/Activity;)Lfr/nicolaspomepuy/discreetapprate/AppRate;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount(I)Lfr/nicolaspomepuy/discreetapprate/AppRate;

    move-result-object p1

    invoke-virtual {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->checkAndShow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 77
    invoke-virtual {p0, p1}, Lcom/perm/kate/DialogsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onPause()V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

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
    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->stop()V

    :cond_1
    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/perm/kate/DialogsActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method
