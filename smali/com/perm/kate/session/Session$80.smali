.class Lcom/perm/kate/session/Session$80;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$comment_id:J

.field final synthetic val$photoOwnerId:Ljava/lang/Long;

.field final synthetic val$photo_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;J)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/perm/kate/session/Session$80;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$80;->val$photo_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$80;->val$photoOwnerId:Ljava/lang/Long;

    iput-wide p7, p0, Lcom/perm/kate/session/Session$80;->val$comment_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1013
    iget-object v0, p0, Lcom/perm/kate/session/Session$80;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$80;->val$photo_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$80;->val$photoOwnerId:Ljava/lang/Long;

    iget-wide v5, p0, Lcom/perm/kate/session/Session$80;->val$comment_id:J

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->deletePhotoComment(JLjava/lang/Long;J)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
