.class Lcom/perm/kate/SyncSelectionActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "SyncSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncSelectionActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncSelectionActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SyncSelectionActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$3;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$3;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SyncSelectionActivity;->showProgressBar(Z)V

    .line 101
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$3;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/perm/kate/SyncSelectionActivity;->access$402(Lcom/perm/kate/SyncSelectionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 94
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$3;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SyncSelectionActivity;->showProgressBar(Z)V

    .line 95
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$3;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncSelectionActivity;->access$400(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$3;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncSelectionActivity;->access$500(Lcom/perm/kate/SyncSelectionActivity;)V

    .line 97
    :cond_0
    return-void
.end method
