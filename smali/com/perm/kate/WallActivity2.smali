.class public Lcom/perm/kate/WallActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "WallActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/WallFragment;

.field private is_suggest:Z

.field private uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/WallActivity2;->is_suggest:Z

    return-void
.end method

.method private checkSetupComposeButton()V
    .locals 3

    .prologue
    .line 54
    invoke-static {p0}, Lcom/perm/kate/Helper;->footerAddButtonEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const v1, 0x7f0e00aa

    invoke-virtual {p0, v1}, Lcom/perm/kate/WallActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const v1, 0x7f0e019f

    invoke-virtual {p0, v1}, Lcom/perm/kate/WallActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "btn_add_post":Landroid/widget/Button;
    iget-boolean v1, p0, Lcom/perm/kate/WallActivity2;->is_suggest:Z

    if-eqz v1, :cond_0

    const v1, 0x7f070278

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 58
    new-instance v1, Lcom/perm/kate/WallActivity2$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallActivity2$1;-><init>(Lcom/perm/kate/WallActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .end local v0    # "btn_add_post":Landroid/widget/Button;
    :goto_1
    return-void

    .line 57
    .restart local v0    # "btn_add_post":Landroid/widget/Button;
    :cond_0
    const v1, 0x7f070025

    goto :goto_0

    .line 65
    .end local v0    # "btn_add_post":Landroid/widget/Button;
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/WallActivity2;->setupComposeButton()V

    goto :goto_1
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/WallFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onComposeButton()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->onCompose()V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v5, 0x7f03011d

    invoke-virtual {p0, v5}, Lcom/perm/kate/WallActivity2;->setContentView(I)V

    .line 25
    const v5, 0x7f070491

    invoke-virtual {p0, v5}, Lcom/perm/kate/WallActivity2;->setHeaderTitle(I)V

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/WallActivity2;->setupMenuButton()V

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/WallActivity2;->setupRefreshButton()V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/WallActivity2;->setupSearchButton()V

    .line 29
    invoke-virtual {p0}, Lcom/perm/kate/WallActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.is_suggest"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/perm/kate/WallActivity2;->is_suggest:Z

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/WallActivity2;->checkSetupComposeButton()V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/WallActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "show_suggested"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 32
    .local v4, "show_suggested":Z
    invoke-virtual {p0}, Lcom/perm/kate/WallActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.user_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/WallActivity2;->uid:Ljava/lang/Long;

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/WallActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 37
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 38
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v5, Lcom/perm/kate/WallFragment;

    invoke-direct {v5}, Lcom/perm/kate/WallFragment;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "com.perm.kate.user_id"

    iget-object v6, p0, Lcom/perm/kate/WallActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    const-string v5, "com.perm.kate.is_suggest"

    iget-boolean v6, p0, Lcom/perm/kate/WallActivity2;->is_suggest:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    const-string v5, "show_suggested"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    iget-object v5, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v5, v0}, Lcom/perm/kate/WallFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    const v5, 0x7f0e007e

    iget-object v6, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 45
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 48
    const v5, 0x7f0e02be

    invoke-virtual {p0, v5}, Lcom/perm/kate/WallActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/MiniPlayer;

    .line 49
    .local v3, "player":Lcom/perm/kate/MiniPlayer;
    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v3, v8}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    .line 109
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/WallFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 86
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 87
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/perm/kate/WallActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->onRefreshButton()V

    .line 72
    :cond_0
    return-void
.end method

.method protected onSearchButton()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/perm/kate/WallActivity2;->fragment:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->showSearchWallActivity()V

    .line 82
    return-void
.end method
