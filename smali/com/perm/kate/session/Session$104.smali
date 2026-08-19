.class Lcom/perm/kate/session/Session$104;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


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

    .line 1243
    iput-object p1, p0, Lcom/perm/kate/session/Session$104;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$104;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$104;->val$description:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$104;->val$gid:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$104;->val$privacy_view:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$104;->val$privacy_comment:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/perm/kate/session/Session$104;->val$is_private:Z

    iput-object p10, p0, Lcom/perm/kate/session/Session$104;->val$link:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1246
    iget-object v0, p0, Lcom/perm/kate/session/Session$104;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$104;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$104;->val$description:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$104;->val$gid:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$104;->val$privacy_view:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$104;->val$privacy_comment:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/perm/kate/session/Session$104;->val$is_private:Z

    iget-object v8, p0, Lcom/perm/kate/session/Session$104;->val$link:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
