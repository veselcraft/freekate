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

    .line 172
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$6;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 184
    iget-object p1, p0, Lcom/perm/kate/GroupManagementActivity$6;->this$0:Lcom/perm/kate/GroupManagementActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$6;->this$0:Lcom/perm/kate/GroupManagementActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 176
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 178
    iget-object p1, p0, Lcom/perm/kate/GroupManagementActivity$6;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupManagementActivity;->access$1100(Lcom/perm/kate/GroupManagementActivity;)V

    :cond_0
    return-void
.end method
