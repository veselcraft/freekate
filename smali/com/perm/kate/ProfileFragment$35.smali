.class Lcom/perm/kate/ProfileFragment$35;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 1506
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1507
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 1489
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v3, v8}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    move-object v2, p1

    .line 1490
    check-cast v2, Ljava/lang/Long;

    .line 1491
    .local v2, "response":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1492
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1493
    .local v0, "owner_id":J
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v4, v4, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteFriend(JJ)Z

    .line 1494
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    const v4, 0x7f0700ae

    invoke-virtual {v3, v4}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    .line 1495
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ProfileFragment;->access$3800(Lcom/perm/kate/ProfileFragment;)V

    .line 1501
    .end local v0    # "owner_id":J
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1497
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    const v4, 0x7f0704e1

    invoke-virtual {v3, v4}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    .line 1498
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v3, v8}, Lcom/perm/kate/ProfileFragment;->access$3902(Lcom/perm/kate/ProfileFragment;Z)Z

    .line 1499
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v3, v8}, Lcom/perm/kate/ProfileFragment;->access$4000(Lcom/perm/kate/ProfileFragment;I)V

    goto :goto_0
.end method
