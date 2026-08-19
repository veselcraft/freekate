.class Lcom/perm/kate/GroupTopicsActivity$9;
.super Ljava/lang/Thread;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->fixUnfixTopic(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$callback_fix:Lcom/perm/kate/session/Callback;

.field final synthetic val$fix:Z

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;ZJLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$9;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-boolean p2, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$fix:Z

    iput-wide p3, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$topic_id:J

    iput-object p5, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$callback_fix:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 307
    iget-boolean v0, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$fix:Z

    if-eqz v0, :cond_0

    .line 308
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$9;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$topic_id:J

    iget-object v6, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$callback_fix:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/GroupTopicsActivity$9;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->fixTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 310
    :cond_0
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$9;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v9

    iget-wide v11, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$topic_id:J

    iget-object v13, p0, Lcom/perm/kate/GroupTopicsActivity$9;->val$callback_fix:Lcom/perm/kate/session/Callback;

    iget-object v14, p0, Lcom/perm/kate/GroupTopicsActivity$9;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual/range {v8 .. v14}, Lcom/perm/kate/session/Session;->unfixTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
