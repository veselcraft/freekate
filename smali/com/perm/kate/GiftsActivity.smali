.class public Lcom/perm/kate/GiftsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GiftsActivity.java"


# instance fields
.field private fragment:Lcom/perm/kate/GiftsFragment;

.field private user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v3, 0x7f030083

    invoke-virtual {p0, v3}, Lcom/perm/kate/GiftsActivity;->setContentView(I)V

    .line 18
    const v3, 0x7f0701b1

    invoke-virtual {p0, v3}, Lcom/perm/kate/GiftsActivity;->setHeaderTitle(I)V

    .line 19
    invoke-virtual {p0}, Lcom/perm/kate/GiftsActivity;->setupRefreshButton()V

    .line 20
    invoke-virtual {p0}, Lcom/perm/kate/GiftsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.user_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/GiftsActivity;->user_id:Ljava/lang/Long;

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/GiftsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 22
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 23
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v3, Lcom/perm/kate/GiftsFragment;

    invoke-direct {v3}, Lcom/perm/kate/GiftsFragment;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "com.perm.kate.user_id"

    iget-object v4, p0, Lcom/perm/kate/GiftsActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 26
    iget-object v3, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {v3, v0}, Lcom/perm/kate/GiftsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    const v3, 0x7f0e007e

    iget-object v4, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 28
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 29
    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/perm/kate/GiftsActivity;->fragment:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/GiftsFragment;->onRefreshButton()V

    .line 35
    :cond_0
    return-void
.end method
