.class Lcom/perm/kate/session/Session$14;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$chat_id:J

.field final synthetic val$forward_messages:Ljava/util/ArrayList;

.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lon:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$sticker_id:Ljava/lang/Integer;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/perm/kate/session/Session$14;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$14;->val$uid:Ljava/lang/Long;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$14;->val$chat_id:J

    iput-object p7, p0, Lcom/perm/kate/session/Session$14;->val$message:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$14;->val$title:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$14;->val$type:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$14;->val$attachments:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/perm/kate/session/Session$14;->val$forward_messages:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/perm/kate/session/Session$14;->val$lat:Ljava/lang/String;

    iput-object p13, p0, Lcom/perm/kate/session/Session$14;->val$lon:Ljava/lang/String;

    iput-object p14, p0, Lcom/perm/kate/session/Session$14;->val$sticker_id:Ljava/lang/Integer;

    iput-object p15, p0, Lcom/perm/kate/session/Session$14;->val$payload:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 383
    iget-object v1, v0, Lcom/perm/kate/session/Session$14;->this$0:Lcom/perm/kate/session/Session;

    iget-object v2, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v3, v0, Lcom/perm/kate/session/Session$14;->val$uid:Ljava/lang/Long;

    iget-wide v4, v0, Lcom/perm/kate/session/Session$14;->val$chat_id:J

    iget-object v6, v0, Lcom/perm/kate/session/Session$14;->val$message:Ljava/lang/String;

    iget-object v7, v0, Lcom/perm/kate/session/Session$14;->val$title:Ljava/lang/String;

    iget-object v8, v0, Lcom/perm/kate/session/Session$14;->val$type:Ljava/lang/String;

    iget-object v9, v0, Lcom/perm/kate/session/Session$14;->val$attachments:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/perm/kate/session/Session$14;->val$forward_messages:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/perm/kate/session/Session$14;->val$lat:Ljava/lang/String;

    iget-object v12, v0, Lcom/perm/kate/session/Session$14;->val$lon:Ljava/lang/String;

    iget-object v13, v0, Lcom/perm/kate/session/Session$14;->val$sticker_id:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/perm/kate/session/Session$14;->val$payload:Ljava/lang/String;

    iget-object v15, v0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v1, v0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    move-object/from16 v16, v1

    invoke-virtual/range {v2 .. v16}, Lcom/perm/kate/api/Api;->sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
