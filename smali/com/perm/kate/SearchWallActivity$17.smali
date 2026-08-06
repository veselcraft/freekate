.class Lcom/perm/kate/SearchWallActivity$17;
.super Ljava/lang/Thread;
.source "SearchWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->pinUnpinPost(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;

.field final synthetic val$pin:Z

.field final synthetic val$pin_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$post_id:J

.field final synthetic val$wall_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;ZJJLcom/perm/kate/session/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$17;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-boolean p2, p0, Lcom/perm/kate/SearchWallActivity$17;->val$pin:Z

    iput-wide p3, p0, Lcom/perm/kate/SearchWallActivity$17;->val$wall_owner_id:J

    iput-wide p5, p0, Lcom/perm/kate/SearchWallActivity$17;->val$post_id:J

    iput-object p7, p0, Lcom/perm/kate/SearchWallActivity$17;->val$pin_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/perm/kate/SearchWallActivity$17;->val$pin:Z

    if-eqz v0, :cond_0

    .line 587
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/SearchWallActivity$17;->val$wall_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/SearchWallActivity$17;->val$post_id:J

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity$17;->val$pin_callback:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity$17;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->pinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 590
    :goto_0
    return-void

    .line 589
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/SearchWallActivity$17;->val$wall_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/SearchWallActivity$17;->val$post_id:J

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity$17;->val$pin_callback:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity$17;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->unpinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
