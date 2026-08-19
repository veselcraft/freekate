.class Lcom/perm/kate/DashboardFragment$14;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$14;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 286
    iget-object p1, p0, Lcom/perm/kate/DashboardFragment$14;->this$0:Lcom/perm/kate/DashboardFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment$14;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/StoriesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
