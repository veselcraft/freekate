.class Lcom/perm/kate/RequestsToGroupListAdapter$4;
.super Ljava/lang/Thread;
.source "RequestsToGroupListAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupListAdapter;J)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupListAdapter$4;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    iput-wide p2, p0, Lcom/perm/kate/RequestsToGroupListAdapter$4;->val$user_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 160
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupListAdapter$4;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-static {v1}, Lcom/perm/kate/RequestsToGroupListAdapter;->access$300(Lcom/perm/kate/RequestsToGroupListAdapter;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perm/kate/RequestsToGroupListAdapter$4;->val$user_id:J

    iget-object v5, p0, Lcom/perm/kate/RequestsToGroupListAdapter$4;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-static {v5}, Lcom/perm/kate/RequestsToGroupListAdapter;->access$400(Lcom/perm/kate/RequestsToGroupListAdapter;)Landroid/app/Activity;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->groupsRemoveUser(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
