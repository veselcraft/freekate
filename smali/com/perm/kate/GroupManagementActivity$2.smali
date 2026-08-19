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

    .line 63
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 79
    iget-object p1, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    if-eqz p1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupManagementActivity;->access$302(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupManagementActivity$2;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupManagementActivity;->access$300(Lcom/perm/kate/GroupManagementActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/GroupManagementActivity;->access$400(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V

    return-void
.end method
