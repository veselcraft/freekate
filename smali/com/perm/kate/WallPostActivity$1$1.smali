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

    .line 217
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$1$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    .line 220
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/Helper;->extractLocationFromAttachments(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1

    .line 221
    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$300(Lcom/perm/kate/WallPostActivity;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$400(Lcom/perm/kate/WallPostActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v6

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$600(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v8

    iget-object v10, v0, Lcom/perm/kate/WallPostActivity$1$1;->val$text:Ljava/lang/String;

    sget-object v11, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    aget-object v12, v1, v4

    aget-object v13, v1, v3

    const-wide/16 v14, 0x0

    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$700(Lcom/perm/kate/WallPostActivity;)Ljava/lang/Long;

    move-result-object v16

    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$800(Lcom/perm/kate/WallPostActivity;)Z

    move-result v17

    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$900(Lcom/perm/kate/WallPostActivity;)Ljava/lang/String;

    move-result-object v18

    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    iget-object v2, v1, Lcom/perm/kate/WallPostActivity;->callback_save:Lcom/perm/kate/session/Callback;

    move-object/from16 v19, v2

    move-object/from16 v20, v1

    invoke-virtual/range {v5 .. v20}, Lcom/perm/kate/session/Session;->editWallPost(JJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    .line 224
    :cond_0
    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$1000(Lcom/perm/kate/WallPostActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$1100(Lcom/perm/kate/WallPostActivity;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v10, v2

    .line 225
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v6

    iget-object v8, v0, Lcom/perm/kate/WallPostActivity$1$1;->val$text:Ljava/lang/String;

    sget-object v9, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$1200(Lcom/perm/kate/WallPostActivity;)Z

    move-result v11

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$1300(Lcom/perm/kate/WallPostActivity;)Z

    move-result v12

    iget-object v2, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v2, v2, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v2}, Lcom/perm/kate/WallPostActivity;->access$800(Lcom/perm/kate/WallPostActivity;)Z

    move-result v13

    aget-object v14, v1, v4

    aget-object v15, v1, v3

    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$700(Lcom/perm/kate/WallPostActivity;)Ljava/lang/Long;

    move-result-object v16

    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$600(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v17

    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$900(Lcom/perm/kate/WallPostActivity;)Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    move-object/from16 v21, v1

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity;->callback_save:Lcom/perm/kate/session/Callback;

    move-object/from16 v20, v1

    invoke-virtual/range {v5 .. v21}, Lcom/perm/kate/session/Session;->createWallPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 226
    iget-object v1, v0, Lcom/perm/kate/WallPostActivity$1$1;->this$1:Lcom/perm/kate/WallPostActivity$1;

    iget-object v1, v1, Lcom/perm/kate/WallPostActivity$1;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->onlineWarning(Landroid/app/Activity;)V

    .line 227
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->setOffline()V

    :goto_1
    return-void
.end method
