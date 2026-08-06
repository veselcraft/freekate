.class public Lcom/perm/kate/ExtraProfileActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "ExtraProfileActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/ExtraProfileFragment;

.field private uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v3, 0x7f030068

    invoke-virtual {p0, v3}, Lcom/perm/kate/ExtraProfileActivity2;->setContentView(I)V

    .line 21
    const v3, 0x7f07011a

    invoke-virtual {p0, v3}, Lcom/perm/kate/ExtraProfileActivity2;->setHeaderTitle(I)V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileActivity2;->setupRefreshButton()V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ExtraProfileActivity2;->uid:Ljava/lang/Long;

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 27
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 28
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v3, Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {v3}, Lcom/perm/kate/ExtraProfileFragment;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "com.perm.kate.user_id"

    iget-object v4, p0, Lcom/perm/kate/ExtraProfileActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 31
    iget-object v3, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v3, v0}, Lcom/perm/kate/ExtraProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    const v3, 0x7f0e007e

    iget-object v4, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 33
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/ExtraProfileFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ExtraProfileFragment;->onRefreshButton()V

    .line 40
    :cond_0
    return-void
.end method
