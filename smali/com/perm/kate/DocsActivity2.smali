.class public Lcom/perm/kate/DocsActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "DocsActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/DocsFragment;


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
    .line 53
    iget-object v0, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/DocsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 55
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v5, 0x7f03005f

    invoke-virtual {p0, v5}, Lcom/perm/kate/DocsActivity2;->setContentView(I)V

    .line 20
    const v5, 0x7f07008e

    invoke-virtual {p0, v5}, Lcom/perm/kate/DocsActivity2;->setHeaderTitle(I)V

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/DocsActivity2;->setupMenuButton()V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/DocsActivity2;->setupRefreshButton()V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/DocsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "owner_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 24
    .local v3, "owner_id":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/perm/kate/DocsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "select"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 27
    .local v4, "select_mode":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/perm/kate/DocsActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 28
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 29
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v5, Lcom/perm/kate/DocsFragment;

    invoke-direct {v5}, Lcom/perm/kate/DocsFragment;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "owner_id"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 32
    const-string v5, "select"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    iget-object v5, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v5, v0}, Lcom/perm/kate/DocsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    const v5, 0x7f0e007e

    iget-object v6, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 47
    invoke-virtual {p0, p1}, Lcom/perm/kate/DocsActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/DocsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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
    iget-object v0, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/perm/kate/DocsActivity2;->fragment:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DocsFragment;->onRefreshButton()V

    .line 42
    :cond_0
    return-void
.end method
