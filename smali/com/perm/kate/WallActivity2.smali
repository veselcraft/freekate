.class public Lcom/perm/kate/WallActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "WallActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/WallFragment;

.field private is_suggest:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/perm/kate/WallActivity2;->is_suggest:Z

    return-void
.end method

.method private checkSetupComposeButton()V
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/perm/kate/Helper;->footerAddButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09014c

    .line 54
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090090

    .line 55
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    iget-boolean v1, p0, Lcom/perm/kate/WallActivity2;->is_suggest:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f02d1

    goto :goto_0

    :cond_0
    const v1, 0x7f0f003d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 57
    new-instance v1, Lcom/perm/kate/WallActivity2$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallActivity2$1;-><init>(Lcom/perm/kate/WallActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupComposeButton()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/perm/kate/WallFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onComposeButton()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->onCompose()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 22
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c013d

    .line 23
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f051e

    .line 24
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 25
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_suggest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/WallActivity2;->is_suggest:Z

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/WallActivity2;->checkSetupComposeButton()V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "show_suggested"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 37
    new-instance v6, Lcom/perm/kate/WallFragment;

    invoke-direct {v6}, Lcom/perm/kate/WallFragment;-><init>()V

    iput-object v6, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    .line 38
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 39
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    iget-boolean v3, p0, Lcom/perm/kate/WallActivity2;->is_suggest:Z

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {v6, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    iget-object p1, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    iget-object p1, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    const v0, 0x7f0900da

    invoke-virtual {v5, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 44
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const p1, 0x7f090233

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MiniPlayer;

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1, v1}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    .line 108
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/perm/kate/WallFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 85
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 87
    invoke-virtual {p0, p1}, Lcom/perm/kate/WallActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->showSearchWallActivity()V

    return-void
.end method
