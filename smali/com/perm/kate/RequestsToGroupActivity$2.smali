.class Lcom/perm/kate/RequestsToGroupActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "RequestsToGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/RequestsToGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/RequestsToGroupActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$2;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity$2;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/RequestsToGroupActivity;->showProgressBar(Z)V

    .line 88
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity$2;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 77
    check-cast v0, Ljava/util/ArrayList;

    .line 78
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity$2;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/RequestsToGroupActivity;->showProgressBar(Z)V

    .line 79
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity$2;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$302(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity$2;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupActivity$2;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v2}, Lcom/perm/kate/RequestsToGroupActivity;->access$300(Lcom/perm/kate/RequestsToGroupActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/RequestsToGroupActivity;->access$400(Lcom/perm/kate/RequestsToGroupActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
