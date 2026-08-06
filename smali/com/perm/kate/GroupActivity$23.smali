.class Lcom/perm/kate/GroupActivity$23;
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
    .line 667
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 686
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 687
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 670
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v1, v7}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 671
    check-cast v0, Ljava/lang/String;

    .line 672
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$2300(Lcom/perm/kate/GroupActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    const v2, 0x7f0704ba

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupActivity;->displayToast(I)V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    const v2, 0x7f0704b8

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupActivity;->displayToast(I)V

    .line 677
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J

    .line 678
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$23;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$1000(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0
.end method
