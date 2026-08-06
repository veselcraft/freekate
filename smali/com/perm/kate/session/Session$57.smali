.class Lcom/perm/kate/session/Session$57;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->createWallComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/perm/kate/session/Session$57;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$57;->val$owner_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$57;->val$post_id:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$57;->val$text:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$57;->val$reply_to_cid:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$57;->val$attachments:Ljava/util/ArrayList;

    iput-boolean p9, p0, Lcom/perm/kate/session/Session$57;->val$from_group:Z

    iput-object p10, p0, Lcom/perm/kate/session/Session$57;->val$sticker_id:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/perm/kate/session/Session$57;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$57;->val$owner_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/session/Session$57;->val$post_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$57;->val$text:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$57;->val$reply_to_cid:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$57;->val$attachments:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/perm/kate/session/Session$57;->val$from_group:Z

    iget-object v7, p0, Lcom/perm/kate/session/Session$57;->val$sticker_id:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/perm/kate/session/Session$57;->captcha_key:Ljava/lang/String;

    iget-object v9, p0, Lcom/perm/kate/session/Session$57;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/api/Api;->createWallComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$57;->res:Ljava/lang/Object;

    .line 706
    return-void
.end method
