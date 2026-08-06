.class Lcom/perm/kate/PlayerActivity$9;
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
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$9;->this$0:Lcom/perm/kate/PlayerActivity;

    iput-boolean p2, p0, Lcom/perm/kate/PlayerActivity$9;->val$smooth:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 508
    :try_start_0
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v2, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 511
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 513
    iget-boolean v2, p0, Lcom/perm/kate/PlayerActivity$9;->val$smooth:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 514
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity$9;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v2}, Lcom/perm/kate/PlayerActivity;->access$000(Lcom/perm/kate/PlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/perm/kate/PlayerActivity;->smoothScrollToPositionWithReflection(Landroid/widget/ListView;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v0    # "pos":I
    :catch_0
    move-exception v1

    .line 520
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 521
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 518
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "pos":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity$9;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v2}, Lcom/perm/kate/PlayerActivity;->access$000(Lcom/perm/kate/PlayerActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
