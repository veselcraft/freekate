.class Lcom/perm/kate/session/Session$63;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$copyright:Ljava/lang/String;

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
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 850
    iput-object v1, v0, Lcom/perm/kate/session/Session$63;->this$0:Lcom/perm/kate/session/Session;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/perm/kate/session/Session$63;->val$owner_id:J

    move-object v1, p6

    iput-object v1, v0, Lcom/perm/kate/session/Session$63;->val$text:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/perm/kate/session/Session$63;->val$attachments:Ljava/util/ArrayList;

    move-object v1, p8

    iput-object v1, v0, Lcom/perm/kate/session/Session$63;->val$export:Ljava/lang/String;

    move v1, p9

    iput-boolean v1, v0, Lcom/perm/kate/session/Session$63;->val$only_friends:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/perm/kate/session/Session$63;->val$from_group:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/perm/kate/session/Session$63;->val$signed:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/perm/kate/session/Session$63;->val$lat:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/perm/kate/session/Session$63;->val$lon:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/perm/kate/session/Session$63;->val$publish_date:Ljava/lang/Long;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/perm/kate/session/Session$63;->val$post_id:J

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/perm/kate/session/Session$63;->val$copyright:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p3

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 853
    iget-object v1, v0, Lcom/perm/kate/session/Session$63;->this$0:Lcom/perm/kate/session/Session;

    iget-object v2, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v3, v0, Lcom/perm/kate/session/Session$63;->val$owner_id:J

    iget-object v5, v0, Lcom/perm/kate/session/Session$63;->val$text:Ljava/lang/String;

    iget-object v6, v0, Lcom/perm/kate/session/Session$63;->val$attachments:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/perm/kate/session/Session$63;->val$export:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/perm/kate/session/Session$63;->val$only_friends:Z

    iget-boolean v9, v0, Lcom/perm/kate/session/Session$63;->val$from_group:Z

    iget-boolean v10, v0, Lcom/perm/kate/session/Session$63;->val$signed:Z

    iget-object v11, v0, Lcom/perm/kate/session/Session$63;->val$lat:Ljava/lang/String;

    iget-object v12, v0, Lcom/perm/kate/session/Session$63;->val$lon:Ljava/lang/String;

    iget-object v13, v0, Lcom/perm/kate/session/Session$63;->val$publish_date:Ljava/lang/Long;

    iget-wide v14, v0, Lcom/perm/kate/session/Session$63;->val$post_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-object v15, v0, Lcom/perm/kate/session/Session$63;->val$copyright:Ljava/lang/String;

    iget-object v1, v0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    move-object/from16 v17, v1

    invoke-virtual/range {v2 .. v17}, Lcom/perm/kate/api/Api;->createWallPost(JLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
