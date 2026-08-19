.class Lcom/perm/kate/session/Session$45;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$comment_privacy:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$privacy:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/perm/kate/session/Session$45;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$45;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$45;->val$gid:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$45;->val$privacy:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$45;->val$comment_privacy:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$45;->val$description:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 682
    iget-object v0, p0, Lcom/perm/kate/session/Session$45;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$45;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$45;->val$gid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$45;->val$privacy:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$45;->val$comment_privacy:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$45;->val$description:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->createAlbum(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Album;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
