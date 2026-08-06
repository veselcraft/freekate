.class Lcom/perm/kate/GroupManagementActivity$6;
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
    .line 172
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$6;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 184
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$6;->this$0:Lcom/perm/kate/GroupManagementActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupManagementActivity;->showProgressBar(Z)V

    .line 185
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$6;->this$0:Lcom/perm/kate/GroupManagementActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupManagementActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 176
    check-cast v0, Ljava/lang/Integer;

    .line 177
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 178
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$6;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupManagementActivity;->access$1100(Lcom/perm/kate/GroupManagementActivity;)V

    .line 179
    :cond_0
    return-void
.end method
