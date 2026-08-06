.class public Lcom/perm/kate/NotesActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "NotesActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/NotesFragment;

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
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/NotesFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 60
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onComposeButton()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NotesFragment;->onComposeButton()V

    .line 47
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v3, 0x7f0300c0

    invoke-virtual {p0, v3}, Lcom/perm/kate/NotesActivity2;->setContentView(I)V

    .line 21
    const v3, 0x7f070320

    invoke-virtual {p0, v3}, Lcom/perm/kate/NotesActivity2;->setHeaderTitle(I)V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/NotesActivity2;->setupMenuButton()V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/NotesActivity2;->setupRefreshButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/NotesActivity2;->setupComposeButton()V

    .line 25
    invoke-virtual {p0}, Lcom/perm/kate/NotesActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.user_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/NotesActivity2;->uid:Ljava/lang/Long;

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/NotesActivity2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 29
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 30
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v3, Lcom/perm/kate/NotesFragment;

    invoke-direct {v3}, Lcom/perm/kate/NotesFragment;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "com.perm.kate.user_id"

    iget-object v4, p0, Lcom/perm/kate/NotesActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    iget-object v3, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v3, v0}, Lcom/perm/kate/NotesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    const v3, 0x7f0e007e

    iget-object v4, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 35
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 52
    invoke-virtual {p0, p1}, Lcom/perm/kate/NotesActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/NotesFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NotesFragment;->onRefreshButton()V

    .line 42
    :cond_0
    return-void
.end method
