.class Lcom/perm/kate/Helper$8$1;
.super Ljava/lang/Thread;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Helper$8;


# direct methods
.method constructor <init>(Lcom/perm/kate/Helper$8;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/Helper$8;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/perm/kate/Helper$8$1;->this$0:Lcom/perm/kate/Helper$8;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1127
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/Helper$8$1;->this$0:Lcom/perm/kate/Helper$8;

    iget-wide v2, v2, Lcom/perm/kate/Helper$8;->val$owner_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/Helper$8$1;->this$0:Lcom/perm/kate/Helper$8;

    iget-object v4, v4, Lcom/perm/kate/Helper$8;->val$new_status:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/Helper$8$1;->this$0:Lcom/perm/kate/Helper$8;

    iget-boolean v8, v8, Lcom/perm/kate/Helper$8;->val$from_group:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/Helper$8$1;->this$0:Lcom/perm/kate/Helper$8;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/perm/kate/Helper$8;->val$activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v1 .. v16}, Lcom/perm/kate/session/Session;->createWallPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1128
    return-void
.end method
