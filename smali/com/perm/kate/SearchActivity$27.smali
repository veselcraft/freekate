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
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1024
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1025
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1026
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1027
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 984
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v7, p1}, Lcom/perm/kate/SearchActivity;->access$5602(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 987
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 990
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .local v8, "user_id":J
    const-wide/16 v0, 0x0

    .line 992
    .local v0, "chat_id":J
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x77359400

    cmp-long v7, v10, v12

    if-lez v7, :cond_0

    .line 993
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/32 v12, 0x77359400

    sub-long v0, v10, v12

    .line 994
    const-wide/16 v8, 0x0

    .line 997
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7, v8, v9}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 998
    .local v4, "thread_id":J
    invoke-static {v4, v5}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 999
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1003
    .end local v0    # "chat_id":J
    .end local v4    # "thread_id":J
    .end local v8    # "user_id":J
    :cond_1
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1004
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v6, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v2, "groups_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Message;

    .line 1007
    .local v3, "m":Lcom/perm/kate/api/Message;
    iget-wide v10, v3, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v10, v11}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1008
    iget-wide v10, v3, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    :cond_2
    iget-wide v10, v3, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v10, v11}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1012
    .end local v3    # "m":Lcom/perm/kate/api/Message;
    :cond_3
    invoke-static {v6}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 1013
    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 1014
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v10, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v10}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/perm/kate/SearchActivity;->access$6600(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    .line 1016
    .end local v2    # "groups_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v6    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 1017
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1020
    :goto_1
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1021
    return-void

    .line 1019
    :cond_5
    iget-object v7, p0, Lcom/perm/kate/SearchActivity$27;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v10, 0x3

    invoke-static {v7, v10}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_1
.end method
