.class Lcom/perm/kate/DashboardFragment$18;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$18;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/DashboardItem;

    .line 438
    iget v0, p1, Lcom/perm/kate/DashboardItem;->type:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    iget p1, p1, Lcom/perm/kate/DashboardItem;->id:I

    int-to-long v0, p1

    iget-object p1, p0, Lcom/perm/kate/DashboardFragment$18;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0

    .line 440
    :cond_1
    iget p1, p1, Lcom/perm/kate/DashboardItem;->id:I

    int-to-long v0, p1

    iget-object p1, p0, Lcom/perm/kate/DashboardFragment$18;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    :goto_0
    return-void
.end method
