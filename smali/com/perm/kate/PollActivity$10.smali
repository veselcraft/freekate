.class Lcom/perm/kate/PollActivity$10;
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

    .line 299
    iput-object p1, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 307
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 308
    iget-object p1, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {p1}, Lcom/perm/kate/PollActivity;->access$1000(Lcom/perm/kate/PollActivity;)V

    .line 309
    iget-object p1, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {p1}, Lcom/perm/kate/PollActivity;->access$900(Lcom/perm/kate/PollActivity;)V

    return-void
.end method
