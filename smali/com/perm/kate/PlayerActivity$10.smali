.class Lcom/perm/kate/PlayerActivity$10;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PlayerActivity;->scrollToCurrentAudio(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;

.field final synthetic val$smooth:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;Z)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$10;->this$0:Lcom/perm/kate/PlayerActivity;

    iput-boolean p2, p0, Lcom/perm/kate/PlayerActivity$10;->val$smooth:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 533
    :try_start_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 538
    :cond_1
    iget-boolean v1, p0, Lcom/perm/kate/PlayerActivity$10;->val$smooth:Z

    if-eqz v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity$10;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v1}, Lcom/perm/kate/PlayerActivity;->access$1100(Lcom/perm/kate/PlayerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_1

    .line 542
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity$10;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v1}, Lcom/perm/kate/PlayerActivity;->access$1100(Lcom/perm/kate/PlayerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 545
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
