.class Lcom/perm/kate/BlackListActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "BlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BlackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BlackListActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$2;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 67
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 68
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$2;->this$0:Lcom/perm/kate/BlackListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BlackListActivity;->showProgressBar(Z)V

    .line 69
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 57
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/perm/kate/BlackListActivity$2;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/BlackListActivity;->access$200(Lcom/perm/kate/BlackListActivity;Ljava/util/ArrayList;)V

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/BlackListActivity$2;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v1}, Lcom/perm/kate/BlackListActivity;->access$400(Lcom/perm/kate/BlackListActivity;)V

    .line 62
    iget-object v1, p0, Lcom/perm/kate/BlackListActivity$2;->this$0:Lcom/perm/kate/BlackListActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BlackListActivity;->showProgressBar(Z)V

    .line 63
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/BlackListActivity$2;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v1}, Lcom/perm/kate/BlackListActivity;->access$300(Lcom/perm/kate/BlackListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
