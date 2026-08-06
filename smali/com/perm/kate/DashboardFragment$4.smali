.class Lcom/perm/kate/DashboardFragment$4;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DashboardFragment;->updateOnlineStateButtonInUI(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;

.field final synthetic val$online:Z

.field final synthetic val$online_mobile:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$4;->this$0:Lcom/perm/kate/DashboardFragment;

    iput-boolean p2, p0, Lcom/perm/kate/DashboardFragment$4;->val$online:Z

    iput-boolean p3, p0, Lcom/perm/kate/DashboardFragment$4;->val$online_mobile:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$4;->this$0:Lcom/perm/kate/DashboardFragment;

    iget-boolean v1, p0, Lcom/perm/kate/DashboardFragment$4;->val$online:Z

    iget-boolean v2, p0, Lcom/perm/kate/DashboardFragment$4;->val$online_mobile:Z

    invoke-static {v0, v1, v2}, Lcom/perm/kate/DashboardFragment;->access$300(Lcom/perm/kate/DashboardFragment;ZZ)V

    .line 169
    return-void
.end method
