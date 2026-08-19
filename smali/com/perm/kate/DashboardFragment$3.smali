.class Lcom/perm/kate/DashboardFragment$3;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$3;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 133
    sget-object v1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v1}, Lcom/perm/kate/Online;->startUnchecked()V

    goto :goto_0

    .line 135
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v1, v0}, Lcom/perm/kate/Online;->stop(Z)V

    .line 137
    :goto_0
    sget-object v1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/perm/kate/Online;->setOnlineFlag(Z)V

    .line 138
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-ne p2, v0, :cond_2

    .line 140
    iget-object p1, p0, Lcom/perm/kate/DashboardFragment$3;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/DashboardFragment;->offlineAlert(Landroid/app/Activity;)V

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/DashboardFragment$3;->this$0:Lcom/perm/kate/DashboardFragment;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {p1, v0}, Lcom/perm/kate/DashboardFragment;->access$200(Lcom/perm/kate/DashboardFragment;Z)V

    return-void
.end method
