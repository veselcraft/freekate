.class Lcom/perm/kate/ExtraProfileFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "ExtraProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ExtraProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ExtraProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ExtraProfileFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 174
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/ExtraProfileFragment;->showProgressBar(Z)V

    .line 175
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ExtraProfileFragment;->access$200(Lcom/perm/kate/ExtraProfileFragment;)V

    .line 176
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v3, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v3, v5}, Lcom/perm/kate/ExtraProfileFragment;->showProgressBar(Z)V

    .line 154
    iget-object v3, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ExtraProfileFragment;->access$200(Lcom/perm/kate/ExtraProfileFragment;)V

    move-object v2, p1

    .line 155
    check-cast v2, Ljava/util/ArrayList;

    .line 156
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/User;

    invoke-static {v4, v3}, Lcom/perm/kate/ExtraProfileFragment;->access$302(Lcom/perm/kate/ExtraProfileFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;

    .line 159
    iget-object v3, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ExtraProfileFragment;->access$300(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ExtraProfileFragment;->access$300(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, "relatives_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ExtraProfileFragment;->access$300(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Relative;

    .line 163
    .local v0, "r":Lcom/perm/kate/api/Relative;
    iget-wide v4, v0, Lcom/perm/kate/api/Relative;->id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 164
    iget-wide v4, v0, Lcom/perm/kate/api/Relative;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    .end local v0    # "r":Lcom/perm/kate/api/Relative;
    :cond_3
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 168
    .end local v1    # "relatives_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    iget-object v3, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ExtraProfileFragment;->access$400(Lcom/perm/kate/ExtraProfileFragment;)V

    goto :goto_0
.end method
