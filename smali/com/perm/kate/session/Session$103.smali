.class Lcom/perm/kate/session/Session$103;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->editGroupTopicComment(JJJLjava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$cid:J

.field final synthetic val$gid:J

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$tid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/perm/kate/session/Session$103;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$103;->val$cid:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$103;->val$gid:J

    iput-wide p8, p0, Lcom/perm/kate/session/Session$103;->val$tid:J

    iput-object p10, p0, Lcom/perm/kate/session/Session$103;->val$text:Ljava/lang/String;

    iput-object p11, p0, Lcom/perm/kate/session/Session$103;->val$attachments:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/perm/kate/session/Session$103;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$103;->val$cid:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$103;->val$gid:J

    iget-wide v6, p0, Lcom/perm/kate/session/Session$103;->val$tid:J

    iget-object v8, p0, Lcom/perm/kate/session/Session$103;->val$text:Ljava/lang/String;

    iget-object v9, p0, Lcom/perm/kate/session/Session$103;->val$attachments:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/perm/kate/session/Session$103;->captcha_key:Ljava/lang/String;

    iget-object v11, p0, Lcom/perm/kate/session/Session$103;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/api/Api;->editGroupTopicComment(JJJLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$103;->res:Ljava/lang/Object;

    .line 1142
    return-void
.end method
