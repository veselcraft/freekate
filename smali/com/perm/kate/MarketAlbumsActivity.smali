.class public Lcom/perm/kate/MarketAlbumsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MarketAlbumsActivity.java"


# instance fields
.field private fragment:Lcom/perm/kate/MarketAlbumsFragment;

.field private group_id:J


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

    .line 52
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsActivity;->fragment:Lcom/perm/kate/MarketAlbumsFragment;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/perm/kate/MarketAlbumsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c00ad

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f032f

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "group_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MarketAlbumsActivity;->group_id:J

    .line 29
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->isAdminOrEditorInGroup(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {v0}, Lcom/perm/kate/MarketAlbumsFragment;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsActivity;->fragment:Lcom/perm/kate/MarketAlbumsFragment;

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    iget-wide v3, p0, Lcom/perm/kate/MarketAlbumsActivity;->group_id:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    iget-object v1, p0, Lcom/perm/kate/MarketAlbumsActivity;->fragment:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f0900da

    .line 39
    iget-object v1, p0, Lcom/perm/kate/MarketAlbumsActivity;->fragment:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 46
    invoke-virtual {p0, p1}, Lcom/perm/kate/MarketAlbumsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsActivity;->fragment:Lcom/perm/kate/MarketAlbumsFragment;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lcom/perm/kate/MarketAlbumsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
