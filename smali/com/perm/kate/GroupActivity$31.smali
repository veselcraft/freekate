.class Lcom/perm/kate/GroupActivity$31;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$31;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$31;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1018
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 1006
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$31;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1007
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 1008
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1009
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$31;->this$0:Lcom/perm/kate/GroupActivity;

    const v0, 0x7f0f053f

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 1010
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$31;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$31;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteUserGroup(JJ)Z

    .line 1011
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$31;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$1000(Lcom/perm/kate/GroupActivity;)V

    :cond_0
    return-void
.end method
