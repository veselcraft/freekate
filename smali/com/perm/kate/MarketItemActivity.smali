.class public Lcom/perm/kate/MarketItemActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MarketItemActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v12, 0x0

    .line 18
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v5, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemActivity;->finish()V

    .line 42
    :goto_0
    return-void

    .line 25
    :cond_0
    const v5, 0x7f0300a0

    invoke-virtual {p0, v5}, Lcom/perm/kate/MarketItemActivity;->setContentView(I)V

    .line 26
    const v5, 0x7f0700ba

    invoke-virtual {p0, v5}, Lcom/perm/kate/MarketItemActivity;->setHeaderTitle(I)V

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v10, "item"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/MarketItem;

    .line 28
    .local v4, "item":Lcom/perm/kate/api/MarketItem;
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v10, "item_id"

    invoke-virtual {v5, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 29
    .local v6, "item_id":J
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v10, "owner_id"

    invoke-virtual {v5, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 32
    .local v8, "owner_id":J
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 33
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 34
    .local v3, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lcom/perm/kate/MarketItemFragment;

    invoke-direct {v2}, Lcom/perm/kate/MarketItemFragment;-><init>()V

    .line 35
    .local v2, "fragment":Lcom/perm/kate/MarketItemFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "item"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 37
    const-string v5, "item_id"

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    const-string v5, "owner_id"

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    invoke-virtual {v2, v0}, Lcom/perm/kate/MarketItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    const v5, 0x7f0e007e

    invoke-virtual {v3, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 41
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
