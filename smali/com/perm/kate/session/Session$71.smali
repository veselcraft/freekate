.class Lcom/perm/kate/session/Session$71;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->deleteNoteComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$comment_id:J

.field final synthetic val$noteOwnerId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/perm/kate/session/Session$71;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$71;->val$noteOwnerId:Ljava/lang/Long;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$71;->val$comment_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Lcom/perm/kate/session/Session$71;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$71;->val$noteOwnerId:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$71;->val$comment_id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->deleteNoteComment(Ljava/lang/Long;J)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$71;->res:Ljava/lang/Object;

    .line 835
    return-void
.end method
