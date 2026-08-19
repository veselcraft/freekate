.class Lcom/perm/kate/SearchActivity$27;
.super Lcom/perm/kate/session/Callback;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1012
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1057
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1058
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1059
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 1016
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/SearchActivity;->access$5702(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1019
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1022
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1024
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x77359400

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 1025
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v4

    move-wide v8, v0

    move-wide v0, v6

    move-wide v6, v8

    .line 1029
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    .line 1030
    invoke-static {v0, v1}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1031
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1035
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1036
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$6800(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    .line 1037
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 1040
    iget-wide v3, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1041
    iget-wide v2, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_2
    iget-wide v2, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_3
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 1046
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 1047
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$6900(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    .line 1049
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_5

    .line 1050
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_1

    .line 1052
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1053
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
