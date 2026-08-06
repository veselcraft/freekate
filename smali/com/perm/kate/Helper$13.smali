.class final Lcom/perm/kate/Helper$13;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Lcom/perm/utils/InstagramHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->processInstagramLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
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
.method constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/perm/kate/Helper$13;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/Helper$13;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/perm/kate/Helper$13;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/perm/kate/Helper$13;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/Helper$13;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/Helper;->access$300(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1494
    return-void
.end method

.method public error()V
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/perm/kate/Helper$13;->val$context:Landroid/app/Activity;

    instance-of v0, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/perm/kate/Helper$13;->val$context:Landroid/app/Activity;

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 1499
    :cond_0
    return-void
.end method
