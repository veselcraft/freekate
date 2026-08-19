.class Lcom/perm/kate/WallFragment$9;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/perm/kate/WallFragment$9;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/WallFragment$9;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallFragment$WallMessageListAdapter;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/perm/kate/WallMessageListAdapter;->clearAttachmentsCache()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallFragment$9;->this$0:Lcom/perm/kate/WallFragment;

    const-string v1, "requery"

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/perm/kate/WallFragment$9;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 558
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 560
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/WallFragment$9;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v2}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
