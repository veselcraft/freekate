.class Lcom/perm/kate/session/Session$59;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->createWallPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$export:Ljava/lang/String;

.field final synthetic val$from_group:Z

.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lon:Ljava/lang/String;

.field final synthetic val$only_friends:Z

.field final synthetic val$owner_id:J

.field final synthetic val$post_id:J

.field final synthetic val$publish_date:Ljava/lang/Long;

.field final synthetic val$signed:Z

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/perm/kate/session/Session$59;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$59;->val$owner_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$59;->val$text:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$59;->val$attachments:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/perm/kate/session/Session$59;->val$export:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/perm/kate/session/Session$59;->val$only_friends:Z

    iput-boolean p10, p0, Lcom/perm/kate/session/Session$59;->val$from_group:Z

    iput-boolean p11, p0, Lcom/perm/kate/session/Session$59;->val$signed:Z

    iput-object p12, p0, Lcom/perm/kate/session/Session$59;->val$lat:Ljava/lang/String;

    iput-object p13, p0, Lcom/perm/kate/session/Session$59;->val$lon:Ljava/lang/String;

    iput-object p14, p0, Lcom/perm/kate/session/Session$59;->val$publish_date:Ljava/lang/Long;

    iput-wide p15, p0, Lcom/perm/kate/session/Session$59;->val$post_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/session/Session$59;->this$0:Lcom/perm/kate/session/Session;

    iget-object v3, v2, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/perm/kate/session/Session$59;->val$owner_id:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/session/Session$59;->val$text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/session/Session$59;->val$attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/session/Session$59;->val$export:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/perm/kate/session/Session$59;->val$only_friends:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/perm/kate/session/Session$59;->val$from_group:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/perm/kate/session/Session$59;->val$signed:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/session/Session$59;->val$lat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/session/Session$59;->val$lon:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/session/Session$59;->val$publish_date:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/session/Session$59;->val$post_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$59;->captcha_key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$59;->captcha_sid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v3 .. v17}, Lcom/perm/kate/api/Api;->createWallPost(JLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/session/Session$59;->res:Ljava/lang/Object;

    .line 724
    return-void
.end method
