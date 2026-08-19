.class Lcom/perm/kate/session/Session$110;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$from_group:Z

.field final synthetic val$gid:J

.field final synthetic val$sticker_id:Ljava/lang/Integer;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$tid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/util/ArrayList;ZLjava/lang/Integer;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/perm/kate/session/Session$110;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$110;->val$gid:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$110;->val$tid:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$110;->val$text:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$110;->val$attachments:Ljava/util/ArrayList;

    iput-boolean p10, p0, Lcom/perm/kate/session/Session$110;->val$from_group:Z

    iput-object p11, p0, Lcom/perm/kate/session/Session$110;->val$sticker_id:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1300
    iget-object v0, p0, Lcom/perm/kate/session/Session$110;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$110;->val$gid:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$110;->val$tid:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$110;->val$text:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$110;->val$attachments:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/perm/kate/session/Session$110;->val$from_group:Z

    iget-object v9, p0, Lcom/perm/kate/session/Session$110;->val$sticker_id:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v11, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/api/Api;->createGroupTopicComment(JJLjava/lang/String;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
