.class Lcom/perm/kate/session/Session$21;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->editPhotoComment(JJLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$cid:J

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$pid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/perm/kate/session/Session$21;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$21;->val$cid:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$21;->val$pid:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$21;->val$owner_id:Ljava/lang/Long;

    iput-object p9, p0, Lcom/perm/kate/session/Session$21;->val$message:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$21;->val$attachments:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/perm/kate/session/Session$21;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$21;->val$cid:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$21;->val$pid:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$21;->val$owner_id:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/session/Session$21;->val$message:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Session$21;->val$attachments:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/perm/kate/session/Session$21;->captcha_key:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/session/Session$21;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/api/Api;->editPhotoComment(JJLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$21;->res:Ljava/lang/Object;

    .line 365
    return-void
.end method
