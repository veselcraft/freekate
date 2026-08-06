.class Lcom/perm/kate/session/Session$135;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->editWallPost(JJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lon:Ljava/lang/String;

.field final synthetic val$owner_id:J

.field final synthetic val$place_id:J

.field final synthetic val$post_id:J

.field final synthetic val$publish_date:Ljava/lang/Long;

.field final synthetic val$signed:Z

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/perm/kate/session/Session$135;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$135;->val$owner_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$135;->val$post_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$135;->val$text:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$135;->val$attachments:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/perm/kate/session/Session$135;->val$lat:Ljava/lang/String;

    iput-object p11, p0, Lcom/perm/kate/session/Session$135;->val$lon:Ljava/lang/String;

    iput-wide p12, p0, Lcom/perm/kate/session/Session$135;->val$place_id:J

    iput-object p14, p0, Lcom/perm/kate/session/Session$135;->val$publish_date:Ljava/lang/Long;

    iput-boolean p15, p0, Lcom/perm/kate/session/Session$135;->val$signed:Z

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
    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/session/Session$135;->this$0:Lcom/perm/kate/session/Session;

    iget-object v3, v2, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/perm/kate/session/Session$135;->val$owner_id:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/session/Session$135;->val$post_id:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/session/Session$135;->val$text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/session/Session$135;->val$attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/session/Session$135;->val$lat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/session/Session$135;->val$lon:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/perm/kate/session/Session$135;->val$place_id:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/session/Session$135;->val$publish_date:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/perm/kate/session/Session$135;->val$signed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$135;->captcha_key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/session/Session$135;->captcha_sid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v3 .. v17}, Lcom/perm/kate/api/Api;->editWallPost(JJLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/session/Session$135;->res:Ljava/lang/Object;

    .line 1444
    return-void
.end method
