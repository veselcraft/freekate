.class Lcom/perm/kate/session/Session$251;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$from_group:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$post_id:Ljava/lang/Long;

.field final synthetic val$reply_to_cid:Ljava/lang/Long;

.field final synthetic val$sticker_id:Ljava/lang/Integer;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;)V
    .locals 0

    .line 2593
    iput-object p1, p0, Lcom/perm/kate/session/Session$251;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$251;->val$owner_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$251;->val$post_id:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$251;->val$text:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$251;->val$reply_to_cid:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$251;->val$attachments:Ljava/util/ArrayList;

    iput-boolean p9, p0, Lcom/perm/kate/session/Session$251;->val$from_group:Z

    iput-object p10, p0, Lcom/perm/kate/session/Session$251;->val$sticker_id:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 2596
    iget-object v0, p0, Lcom/perm/kate/session/Session$251;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$251;->val$owner_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$251;->val$post_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$251;->val$text:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$251;->val$reply_to_cid:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$251;->val$attachments:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lcom/perm/kate/session/Session$251;->val$from_group:Z

    iget-object v8, p0, Lcom/perm/kate/session/Session$251;->val$sticker_id:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/api/Api;->createMarketComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
