.class public Lcom/perm/kate/ExtraProfileActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "ExtraProfileActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/ExtraProfileFragment;

.field private uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0072

    .line 20
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0188

    .line 21
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ExtraProfileActivity2;->uid:Ljava/lang/Long;

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 28
    new-instance v1, Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {v1}, Lcom/perm/kate/ExtraProfileFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    iget-object v2, p0, Lcom/perm/kate/ExtraProfileActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 31
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    const v1, 0x7f0900da

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 46
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileActivity2;->fragment:Lcom/perm/kate/ExtraProfileFragment;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/perm/kate/ExtraProfileFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method
