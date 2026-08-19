.class Lcom/perm/kate/DashboardFragment$4;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;

.field final synthetic val$online:Ljava/lang/Boolean;

.field final synthetic val$online_mobile:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$4;->this$0:Lcom/perm/kate/DashboardFragment;

    iput-object p2, p0, Lcom/perm/kate/DashboardFragment$4;->val$online:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/perm/kate/DashboardFragment$4;->val$online_mobile:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment$4;->this$0:Lcom/perm/kate/DashboardFragment;

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment$4;->val$online:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment$4;->val$online_mobile:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/DashboardFragment;->access$300(Lcom/perm/kate/DashboardFragment;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
