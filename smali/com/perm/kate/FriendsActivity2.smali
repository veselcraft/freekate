.class public Lcom/perm/kate/FriendsActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "FriendsActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/FriendsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/perm/kate/FriendsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c0086

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0230

    .line 28
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 29
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 38
    new-instance v2, Lcom/perm/kate/FriendsActivity;

    invoke-direct {v2}, Lcom/perm/kate/FriendsActivity;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    .line 39
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 40
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0900da

    .line 42
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lcom/perm/kate/FriendsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity2;->fragment:Lcom/perm/kate/FriendsActivity;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/perm/kate/FriendsActivity;->onRefreshButton()V

    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 3

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_user"

    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
