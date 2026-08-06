.class Lcom/perm/kate/session/Session$73;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->deletePhotoComment(JLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$comment_id:J

.field final synthetic val$photoOwnerId:Ljava/lang/Long;

.field final synthetic val$photo_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/perm/kate/session/Session$73;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$73;->val$photo_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$73;->val$photoOwnerId:Ljava/lang/Long;

    iput-wide p7, p0, Lcom/perm/kate/session/Session$73;->val$comment_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/perm/kate/session/Session$73;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v1, p0, Lcom/perm/kate/session/Session$73;->val$photo_id:J

    iget-object v3, p0, Lcom/perm/kate/session/Session$73;->val$photoOwnerId:Ljava/lang/Long;

    iget-wide v4, p0, Lcom/perm/kate/session/Session$73;->val$comment_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/api/Api;->deletePhotoComment(JLjava/lang/Long;J)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$73;->res:Ljava/lang/Object;

    .line 855
    return-void
.end method
