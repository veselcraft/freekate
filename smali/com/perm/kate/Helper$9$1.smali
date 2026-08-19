.class Lcom/perm/kate/Helper$9$1;
.super Ljava/lang/Thread;
.source "Helper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Helper$9;


# direct methods
.method constructor <init>(Lcom/perm/kate/Helper$9;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/perm/kate/Helper$9$1;->this$0:Lcom/perm/kate/Helper$9;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1272
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v15, p0

    iget-object v4, v15, Lcom/perm/kate/Helper$9$1;->this$0:Lcom/perm/kate/Helper$9;

    iget-wide v1, v4, Lcom/perm/kate/Helper$9;->val$owner_id:J

    iget-object v3, v4, Lcom/perm/kate/Helper$9;->val$new_status:Ljava/lang/String;

    iget-boolean v7, v4, Lcom/perm/kate/Helper$9;->val$from_group:Z

    iget-object v4, v4, Lcom/perm/kate/Helper$9;->val$activity:Landroid/app/Activity;

    move-object/from16 v16, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v15, v17

    invoke-virtual/range {v0 .. v16}, Lcom/perm/kate/session/Session;->createWallPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
