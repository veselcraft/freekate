.class Lcom/perm/kate/session/Session$10;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$chat_id:J

.field final synthetic val$forward_messages:Ljava/util/ArrayList;

.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lon:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$sticker_id:Ljava/lang/Integer;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/perm/kate/session/Session$10;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$10;->val$uid:Ljava/lang/Long;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$10;->val$chat_id:J

    iput-object p7, p0, Lcom/perm/kate/session/Session$10;->val$message:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$10;->val$title:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$10;->val$type:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$10;->val$attachments:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/perm/kate/session/Session$10;->val$forward_messages:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/perm/kate/session/Session$10;->val$lat:Ljava/lang/String;

    iput-object p13, p0, Lcom/perm/kate/session/Session$10;->val$lon:Ljava/lang/String;

    iput-object p14, p0, Lcom/perm/kate/session/Session$10;->val$sticker_id:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/perm/kate/session/Session$10;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$10;->val$uid:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$10;->val$chat_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$10;->val$message:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$10;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$10;->val$type:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$10;->val$attachments:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/perm/kate/session/Session$10;->val$forward_messages:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/perm/kate/session/Session$10;->val$lat:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/session/Session$10;->val$lon:Ljava/lang/String;

    iget-object v11, p0, Lcom/perm/kate/session/Session$10;->val$sticker_id:Ljava/lang/Integer;

    iget-object v12, p0, Lcom/perm/kate/session/Session$10;->captcha_key:Ljava/lang/String;

    iget-object v13, p0, Lcom/perm/kate/session/Session$10;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v13}, Lcom/perm/kate/api/Api;->sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$10;->res:Ljava/lang/Object;

    .line 266
    return-void
.end method
