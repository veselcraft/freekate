.class final Lcom/perm/kate/Helper$14;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->processPhotoLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/Helper$14;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/perm/kate/Helper$14;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1510
    iget-object v2, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    instance-of v2, v2, Lcom/perm/kate/BaseActivity;

    if-eqz v2, :cond_0

    .line 1511
    iget-object v2, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    check-cast v2, Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1512
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    const-class v3, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1515
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "uris"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1517
    iget-object v2, p0, Lcom/perm/kate/Helper$14;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/perm/kate/Helper$14;->val$fragment:Landroid/support/v4/app/Fragment;

    const/4 v4, 0x7

    invoke-static {v2, v3, v0, v4}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 1518
    return-void
.end method

.method public error()V
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    instance-of v0, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1523
    iget-object v0, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 1525
    :cond_0
    return-void
.end method
