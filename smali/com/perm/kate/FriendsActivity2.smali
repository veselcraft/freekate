.class public Lcom/perm/kate/FriendsActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "FriendsActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/FriendsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {v0, p1}, Lcom/perm/kate/FriendsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 64
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v4, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity2;->finish()V

    .line 44
    :goto_0
    return-void

    .line 27
    :cond_0
    const v4, 0x7f03007a

    invoke-virtual {p0, v4}, Lcom/perm/kate/FriendsActivity2;->setContentView(I)V

    .line 28
    const v4, 0x7f0701d4

    invoke-virtual {p0, v4}, Lcom/perm/kate/FriendsActivity2;->setHeaderTitle(I)V

    .line 29
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity2;->setupMenuButton()V

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity2;->setupRefreshButton()V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity2;->setupSearchButton()V

    .line 33
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.perm.kate.user_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/FriendsActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 37
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 38
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v4, Lcom/perm/kate/FriendsActivity;

    invoke-direct {v4}, Lcom/perm/kate/FriendsActivity;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v4, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {v4, v0}, Lcom/perm/kate/FriendsActivity;->setArguments(Landroid/os/Bundle;)V

    .line 42
    const v4, 0x7f0e007e

    iget-object v5, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
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
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {v0, p1}, Lcom/perm/kate/FriendsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {v0}, Lcom/perm/kate/FriendsActivity;->onRefreshButton()V

    .line 50
    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsActivity2;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
