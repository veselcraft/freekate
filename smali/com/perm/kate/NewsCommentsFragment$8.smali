.class Lcom/perm/kate/NewsCommentsFragment$8;
.super Lcom/perm/kate/session/Callback;
.source "NewsCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsCommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$8;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 421
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 422
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$8;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsCommentsFragment;->showProgressBar(Z)V

    .line 423
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 414
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 415
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 416
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$8;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsCommentsFragment;->refreshInThread()V

    .line 417
    :cond_0
    return-void
.end method
