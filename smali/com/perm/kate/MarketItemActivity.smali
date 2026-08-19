.class public Lcom/perm/kate/MarketItemActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MarketItemActivity.java"


# instance fields
.field private fragment:Lcom/perm/kate/MarketItemFragment;


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

    .line 56
    iget-object v0, p0, Lcom/perm/kate/MarketItemActivity;->fragment:Lcom/perm/kate/MarketItemFragment;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lcom/perm/kate/MarketItemFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

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

    const p1, 0x7f0f00fe

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/MarketItem;

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "item_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "owner_id"

    invoke-virtual {v1, v7, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    if-eqz p1, :cond_1

    .line 31
    iget-wide v8, p1, Lcom/perm/kate/api/MarketItem;->owner_id:J

    neg-long v8, v8

    goto :goto_0

    :cond_1
    neg-long v8, v3

    :goto_0
    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->isAdminOrEditorInGroup(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 35
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 37
    new-instance v8, Lcom/perm/kate/MarketItemFragment;

    invoke-direct {v8}, Lcom/perm/kate/MarketItemFragment;-><init>()V

    iput-object v8, p0, Lcom/perm/kate/MarketItemActivity;->fragment:Lcom/perm/kate/MarketItemFragment;

    .line 38
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 39
    invoke-virtual {v8, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    invoke-virtual {v8, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    invoke-virtual {v8, v7, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    iget-object p1, p0, Lcom/perm/kate/MarketItemActivity;->fragment:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {p1, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0900da

    .line 43
    iget-object v0, p0, Lcom/perm/kate/MarketItemActivity;->fragment:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 44
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/perm/kate/MarketItemActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/perm/kate/MarketItemActivity;->fragment:Lcom/perm/kate/MarketItemFragment;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lcom/perm/kate/MarketItemFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
