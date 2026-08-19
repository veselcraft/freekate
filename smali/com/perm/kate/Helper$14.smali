.class Lcom/perm/kate/Helper$14;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Lcom/perm/utils/InstagramHelper$Callback;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/app/Activity;)V
    .locals 0

    .line 1632
    iput-object p1, p0, Lcom/perm/kate/Helper$14;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/Helper$14;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Ljava/lang/String;)V
    .locals 2

    .line 1635
    iget-object v0, p0, Lcom/perm/kate/Helper$14;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/Helper$14;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/Helper;->access$300(Ljava/lang/String;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public error()V
    .locals 2

    .line 1639
    iget-object v0, p0, Lcom/perm/kate/Helper$14;->val$context:Landroid/app/Activity;

    instance-of v1, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_0

    .line 1640
    check-cast v0, Lcom/perm/kate/BaseActivity;

    const v1, 0x7f0f00d6

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_0
    return-void
.end method
