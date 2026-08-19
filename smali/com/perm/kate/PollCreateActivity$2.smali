.class Lcom/perm/kate/PollCreateActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "PollCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollCreateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollCreateActivity;Landroid/app/Activity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 155
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 156
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$1800(Lcom/perm/kate/PollCreateActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 145
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 149
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$1700(Lcom/perm/kate/PollCreateActivity;)V

    return-void
.end method
