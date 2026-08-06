.class Lcom/perm/kate/DashboardFragment$3;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DashboardFragment;->showOnlineSettingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$3;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    if-nez p2, :cond_1

    .line 128
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0}, Lcom/perm/kate/Online;->startUnchecked()V

    .line 132
    :goto_0
    sget-object v3, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    if-nez p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/perm/kate/Online;->setOnlineFlag(Z)V

    .line 133
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    if-ne p2, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$3;->this$0:Lcom/perm/kate/DashboardFragment;

    const v3, 0x7f0704c3

    invoke-virtual {v0, v3}, Lcom/perm/kate/DashboardFragment;->displayToast(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$3;->this$0:Lcom/perm/kate/DashboardFragment;

    if-nez p2, :cond_3

    :goto_2
    invoke-static {v0, v1}, Lcom/perm/kate/DashboardFragment;->access$200(Lcom/perm/kate/DashboardFragment;Z)V

    .line 137
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 132
    goto :goto_1

    :cond_3
    move v1, v2

    .line 136
    goto :goto_2
.end method
