.class public Lcom/perm/kate/NotesActivity2;
.super Lcom/perm/kate/BaseActivity;
.source "NotesActivity2.java"


# instance fields
.field private fragment:Lcom/perm/kate/NotesFragment;

.field private uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/perm/kate/NotesFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onComposeButton()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NotesFragment;->onComposeButton()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 19
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d3

    .line 20
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0381

    .line 21
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 22
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 23
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 24
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupComposeButton()V

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NotesActivity2;->uid:Ljava/lang/Long;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 30
    new-instance v1, Lcom/perm/kate/NotesFragment;

    invoke-direct {v1}, Lcom/perm/kate/NotesFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    iget-object v2, p0, Lcom/perm/kate/NotesActivity2;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    const v1, 0x7f0900da

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 52
    invoke-virtual {p0, p1}, Lcom/perm/kate/NotesActivity2;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/perm/kate/NotesFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/perm/kate/NotesActivity2;->fragment:Lcom/perm/kate/NotesFragment;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/perm/kate/NotesFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method
