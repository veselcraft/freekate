.class Lcom/perm/kate/session/Session$96;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$is_private:Z

.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$privacy_comment:Ljava/lang/String;

.field final synthetic val$privacy_view:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/perm/kate/session/Session$96;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$96;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$96;->val$description:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$96;->val$gid:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$96;->val$privacy_view:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$96;->val$privacy_comment:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/perm/kate/session/Session$96;->val$is_private:Z

    iput-object p10, p0, Lcom/perm/kate/session/Session$96;->val$link:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/perm/kate/session/Session$96;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$96;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$96;->val$description:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$96;->val$gid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$96;->val$privacy_view:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$96;->val$privacy_comment:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/perm/kate/session/Session$96;->val$is_private:Z

    iget-object v7, p0, Lcom/perm/kate/session/Session$96;->val$link:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/api/Api;->saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$96;->res:Ljava/lang/Object;

    .line 1079
    return-void
.end method
