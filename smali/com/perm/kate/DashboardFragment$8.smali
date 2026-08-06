.class Lcom/perm/kate/DashboardFragment$8;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DashboardFragment;
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
    .line 211
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$8;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$8;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment$8;->this$0:Lcom/perm/kate/DashboardFragment;

    iget-object v1, v1, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/perm/kate/DashboardFragment;->ShowVideosAcivity(Landroid/content/Context;Ljava/lang/Long;)V

    .line 215
    return-void
.end method
