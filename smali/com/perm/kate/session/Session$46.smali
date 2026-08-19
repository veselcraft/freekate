.class Lcom/perm/kate/session/Session$46;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$aid:J

.field final synthetic val$comment_privacy:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$oid:Ljava/lang/Long;

.field final synthetic val$privacy:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/perm/kate/session/Session$46;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$46;->val$aid:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$46;->val$oid:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$46;->val$title:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$46;->val$privacy:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$46;->val$comment_privacy:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$46;->val$description:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 691
    iget-object v0, p0, Lcom/perm/kate/session/Session$46;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$46;->val$aid:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$46;->val$oid:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$46;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$46;->val$privacy:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$46;->val$comment_privacy:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Session$46;->val$description:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->editAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
