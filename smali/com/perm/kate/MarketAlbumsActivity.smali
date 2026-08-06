.class public Lcom/perm/kate/MarketAlbumsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MarketAlbumsActivity.java"


# instance fields
.field private fragment:Lcom/perm/kate/MarketAlbumsFragment;

.field private group_id:J


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
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v3, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsActivity;->finish()V

    .line 39
    :goto_0
    return-void

    .line 26
    :cond_0
    const v3, 0x7f0300a0

    invoke-virtual {p0, v3}, Lcom/perm/kate/MarketAlbumsActivity;->setContentView(I)V

    .line 27
    const v3, 0x7f0702d2

    invoke-virtual {p0, v3}, Lcom/perm/kate/MarketAlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/perm/kate/MarketAlbumsActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "group_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/MarketAlbumsActivity;->group_id:J

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 32
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 33
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v3, Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {v3}, Lcom/perm/kate/MarketAlbumsFragment;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/MarketAlbumsActivity;->fragment:Lcom/perm/kate/MarketAlbumsFragment;

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "group_id"

    iget-wide v4, p0, Lcom/perm/kate/MarketAlbumsActivity;->group_id:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 36
    iget-object v3, p0, Lcom/perm/kate/MarketAlbumsActivity;->fragment:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {v3, v0}, Lcom/perm/kate/MarketAlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    const v3, 0x7f0e007e

    iget-object v4, p0, Lcom/perm/kate/MarketAlbumsActivity;->fragment:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 38
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
