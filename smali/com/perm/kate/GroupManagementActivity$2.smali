.class Lcom/perm/kate/GroupManagementActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "GroupManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupManagementActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupManagementActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupManagementActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 79
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupManagementActivity;->showProgressBar(Z)V

    .line 80
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupManagementActivity;->showProgressBar(Z)V

    .line 71
    if-eqz v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GroupManagementActivity;->access$302(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    iget-object v2, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupManagementActivity;->access$300(Lcom/perm/kate/GroupManagementActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/GroupManagementActivity;->access$400(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
