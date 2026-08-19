.class Lcom/perm/kate/Helper$15;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1649
    iput-object p1, p0, Lcom/perm/kate/Helper$15;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/Helper$15;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/perm/kate/Helper$15;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/net/Uri;)V
    .locals 3

    .line 1652
    iget-object v0, p0, Lcom/perm/kate/Helper$15;->val$context:Landroid/app/Activity;

    instance-of v1, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_0

    .line 1653
    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1654
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/Helper$15;->val$context:Landroid/app/Activity;

    const-class v2, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 1657
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1659
    iget-object v0, p0, Lcom/perm/kate/Helper$15;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/Helper$15;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x7

    invoke-static {v0, v1, p1, v2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public error()V
    .locals 2

    .line 1663
    iget-object v0, p0, Lcom/perm/kate/Helper$15;->val$context:Landroid/app/Activity;

    instance-of v1, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_0

    .line 1664
    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1665
    iget-object v0, p0, Lcom/perm/kate/Helper$15;->val$context:Landroid/app/Activity;

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const v1, 0x7f0f00d6

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_0
    return-void
.end method
