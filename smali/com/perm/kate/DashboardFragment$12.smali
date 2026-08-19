.class Lcom/perm/kate/DashboardFragment$12;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$12;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/perm/kate/DashboardFragment$12;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-static {p1}, Lcom/perm/kate/DashboardFragment;->access$700(Lcom/perm/kate/DashboardFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$12;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
