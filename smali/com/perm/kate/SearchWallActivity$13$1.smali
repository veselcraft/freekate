.class Lcom/perm/kate/SearchWallActivity$13$1;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchWallActivity$13;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/SearchWallActivity$13;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 471
    new-instance v4, Lcom/perm/kate/SearchWallActivity$13$1$1;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v0, v0, Lcom/perm/kate/SearchWallActivity$13;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/SearchWallActivity$13$1$1;-><init>(Lcom/perm/kate/SearchWallActivity$13$1;Landroid/app/Activity;)V

    .line 481
    .local v4, "callback_remove":Lcom/perm/kate/session/Callback;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v1, v1, Lcom/perm/kate/SearchWallActivity$13;->val$post_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v2, v2, Lcom/perm/kate/SearchWallActivity$13;->val$wall_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v5, v5, Lcom/perm/kate/SearchWallActivity$13;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->removeWallPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 482
    return-void
.end method
