.class public Lcom/perm/kate/GiftsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GiftsActivity.java"


# instance fields
.field private fragment:Lcom/perm/kate/GiftsFragment;

.field private user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 16
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0090

    .line 17
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f020d

    .line 18
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 19
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GiftsActivity;->user_id:Ljava/lang/Long;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 23
    new-instance v1, Lcom/perm/kate/GiftsFragment;

    invoke-direct {v1}, Lcom/perm/kate/GiftsFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    iget-object v2, p0, Lcom/perm/kate/GiftsActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 26
    iget-object v0, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    const v1, 0x7f0900da

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/perm/kate/GiftsFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method
