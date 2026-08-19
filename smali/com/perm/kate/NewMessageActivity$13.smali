.class Lcom/perm/kate/NewMessageActivity$13;
.super Ljava/lang/Thread;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity;->setMessageActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$13;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 741
    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity$13;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMessageActivity;->access$400(Lcom/perm/kate/NewMessageActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 742
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity$13;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/perm/kate/NewMessageActivity$13;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual/range {v6 .. v11}, Lcom/perm/kate/session/Session;->setMessageActivity(Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 744
    :cond_0
    sget-object v12, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity$13;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMessageActivity;->access$400(Lcom/perm/kate/NewMessageActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity$13;->this$0:Lcom/perm/kate/NewMessageActivity;

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Lcom/perm/kate/session/Session;->setMessageActivity(Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
