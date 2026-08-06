.class Lcom/perm/kate/SearchActivity$28;
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
    .line 1030
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1054
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1055
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1056
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1057
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1034
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 1036
    .local v1, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 1038
    .local v0, "m":Lcom/perm/kate/api/Message;
    iget-wide v4, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1039
    .end local v0    # "m":Lcom/perm/kate/api/Message;
    :cond_0
    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 1041
    iget-object v3, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/perm/kate/SearchActivity;->access$5602(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1043
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1044
    iget-object v3, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$5000(Lcom/perm/kate/SearchActivity;)V

    .line 1045
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1046
    iget-object v3, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3, v6}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1049
    :goto_1
    iget-object v3, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v3, v6}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1050
    return-void

    .line 1048
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_1
.end method
