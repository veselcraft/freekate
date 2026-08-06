.class Lcom/perm/kate/WallPostActivity$1$1;
.super Ljava/lang/Thread;
.source "WallPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallPostActivity$1;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/WallPostActivity$1;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$1$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 206
    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/perm/kate/Helper;->extractLocationFromAttachments(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v18

    .line 207
    .local v18, "location":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$300(Lcom/perm/kate/WallPostActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$400(Lcom/perm/kate/WallPostActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$600(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/WallPostActivity$1$1;->val$text:Ljava/lang/String;

    sget-object v9, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object v10, v18, v2

    const/4 v2, 0x1

    aget-object v11, v18, v2

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$700(Lcom/perm/kate/WallPostActivity;)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$800(Lcom/perm/kate/WallPostActivity;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    iget-object v0, v2, Lcom/perm/kate/WallPostActivity;->callback_save:Lcom/perm/kate/session/Callback;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v0, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v3 .. v17}, Lcom/perm/kate/session/Session;->editWallPost(JJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$900(Lcom/perm/kate/WallPostActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$1000(Lcom/perm/kate/WallPostActivity;)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "export":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v3, v3, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v3}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/WallPostActivity$1$1;->val$text:Ljava/lang/String;

    sget-object v6, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v8, v8, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v8}, Lcom/perm/kate/WallPostActivity;->access$1100(Lcom/perm/kate/WallPostActivity;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v9, v9, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v9}, Lcom/perm/kate/WallPostActivity;->access$1200(Lcom/perm/kate/WallPostActivity;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v10, v10, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v10}, Lcom/perm/kate/WallPostActivity;->access$800(Lcom/perm/kate/WallPostActivity;)Z

    move-result v10

    const/4 v11, 0x0

    aget-object v11, v18, v11

    const/4 v12, 0x1

    aget-object v12, v18, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v13, v13, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v13}, Lcom/perm/kate/WallPostActivity;->access$700(Lcom/perm/kate/WallPostActivity;)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v14, v14, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v14}, Lcom/perm/kate/WallPostActivity;->access$600(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity;->callback_save:Lcom/perm/kate/session/Callback;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/perm/kate/session/Session;->createWallPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 210
    .end local v7    # "export":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method
