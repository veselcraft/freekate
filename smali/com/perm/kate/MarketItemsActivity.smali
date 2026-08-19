.class public Lcom/perm/kate/MarketItemsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MarketItemsActivity.java"


# instance fields
.field private album_id:J

.field private fragment:Lcom/perm/kate/MarketItemsFragment;

.field private group_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

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

    const-string v0, "group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/MarketItemsActivity;->group_id:J

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "album_id"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/perm/kate/MarketItemsActivity;->album_id:J

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 34
    new-instance v1, Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {v1}, Lcom/perm/kate/MarketItemsFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MarketItemsActivity;->fragment:Lcom/perm/kate/MarketItemsFragment;

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    iget-wide v4, p0, Lcom/perm/kate/MarketItemsActivity;->group_id:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    iget-wide v4, p0, Lcom/perm/kate/MarketItemsActivity;->album_id:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    iget-object v0, p0, Lcom/perm/kate/MarketItemsActivity;->fragment:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f0900da

    .line 39
    iget-object v1, p0, Lcom/perm/kate/MarketItemsActivity;->fragment:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
