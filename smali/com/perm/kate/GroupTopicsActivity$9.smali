.class Lcom/perm/kate/GroupTopicsActivity$9;
.super Ljava/lang/Thread;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->removeGroupTopic(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$callback_delete:Lcom/perm/kate/session/Callback;

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;JLcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$9;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$topic_id:J

    iput-object p4, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 257
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$9;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$topic_id:J

    iget-object v6, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/GroupTopicsActivity$9;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->deleteGroupTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 258
    return-void
.end method
