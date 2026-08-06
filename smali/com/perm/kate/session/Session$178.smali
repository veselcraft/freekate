.class Lcom/perm/kate/session/Session$178;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->reportPost(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$owner_id:J

.field final synthetic val$post_id:J

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/perm/kate/session/Session$178;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$178;->val$post_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$178;->val$owner_id:J

    iput p8, p0, Lcom/perm/kate/session/Session$178;->val$reason:I

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/perm/kate/session/Session$178;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$178;->val$post_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$178;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/session/Session$178;->val$reason:I

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->reportPost(JJI)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$178;->res:Ljava/lang/Object;

    .line 1832
    return-void
.end method
