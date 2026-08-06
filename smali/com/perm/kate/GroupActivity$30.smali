.class Lcom/perm/kate/GroupActivity$30;
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
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$30;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 963
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$30;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 964
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 965
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 952
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$30;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 953
    check-cast v0, Ljava/lang/String;

    .line 954
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$30;->this$0:Lcom/perm/kate/GroupActivity;

    const v2, 0x7f0704b9

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupActivity;->displayToast(I)V

    .line 956
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$30;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$30;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteUserGroup(JJ)Z

    .line 957
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$30;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$1000(Lcom/perm/kate/GroupActivity;)V

    .line 959
    :cond_0
    return-void
.end method
