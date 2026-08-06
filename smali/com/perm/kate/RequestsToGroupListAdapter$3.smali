.class Lcom/perm/kate/RequestsToGroupListAdapter$3;
.super Ljava/lang/Thread;
.source "RequestsToGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RequestsToGroupListAdapter;->groupsApproveRequest(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupListAdapter;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/RequestsToGroupListAdapter;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupListAdapter$3;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    iput-wide p2, p0, Lcom/perm/kate/RequestsToGroupListAdapter$3;->val$user_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 152
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter$3;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupListAdapter;->access$300(Lcom/perm/kate/RequestsToGroupListAdapter;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/RequestsToGroupListAdapter$3;->val$user_id:J

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter$3;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupListAdapter;->access$400(Lcom/perm/kate/RequestsToGroupListAdapter;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->groupsApproveRequest(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 153
    return-void
.end method
