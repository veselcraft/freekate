.class Lcom/perm/kate/NewsCommentsFragment$8;
.super Lcom/perm/kate/session/Callback;
.source "NewsCommentsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$8;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 423
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 424
    iget-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$8;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 416
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 418
    iget-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$8;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/NewsCommentsFragment;->refreshInThread()V

    :cond_0
    return-void
.end method
