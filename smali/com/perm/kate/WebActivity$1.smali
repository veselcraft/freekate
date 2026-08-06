.class Lcom/perm/kate/WebActivity$1;
.super Lcom/perm/kate/session/Callback;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WebActivity;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WebActivity;

.field final synthetic val$show_progress:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/WebActivity;Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WebActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/perm/kate/WebActivity$1;->this$0:Lcom/perm/kate/WebActivity;

    iput-boolean p3, p0, Lcom/perm/kate/WebActivity$1;->val$show_progress:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/perm/kate/WebActivity$1;->val$show_progress:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/perm/kate/WebActivity$1;->this$0:Lcom/perm/kate/WebActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WebActivity;->showProgressBar(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/perm/kate/WebActivity$1;->val$show_progress:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/perm/kate/WebActivity$1;->this$0:Lcom/perm/kate/WebActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WebActivity;->showProgressBar(Z)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WebActivity$1;->this$0:Lcom/perm/kate/WebActivity;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/perm/kate/WebActivity;->access$000(Lcom/perm/kate/WebActivity;Ljava/lang/String;)V

    .line 101
    return-void
.end method
