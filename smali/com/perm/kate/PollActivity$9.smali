.class Lcom/perm/kate/PollActivity$9;
.super Lcom/perm/kate/session/Callback;
.source "PollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 244
    iget-object v0, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$1000(Lcom/perm/kate/PollActivity;)V

    .line 245
    iget-object v0, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PollActivity;->showProgressBar(Z)V

    .line 246
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$900(Lcom/perm/kate/PollActivity;)V

    .line 239
    return-void
.end method
