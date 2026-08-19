.class Lcom/perm/kate/DashboardFragment$8;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$8;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/perm/kate/DashboardFragment$8;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$8;->this$0:Lcom/perm/kate/DashboardFragment;

    iget-object v0, v0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-static {p1, v0}, Lcom/perm/kate/DashboardFragment;->ShowVideosAcivity(Landroid/content/Context;Ljava/lang/Long;)V

    return-void
.end method
