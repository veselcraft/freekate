.class Lcom/perm/kate/ExtraProfileFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "ExtraProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ExtraProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 174
    iget-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 175
    iget-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ExtraProfileFragment;->access$200(Lcom/perm/kate/ExtraProfileFragment;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 154
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ExtraProfileFragment;->access$200(Lcom/perm/kate/ExtraProfileFragment;)V

    .line 155
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    invoke-static {v0, p1}, Lcom/perm/kate/ExtraProfileFragment;->access$302(Lcom/perm/kate/ExtraProfileFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;

    .line 159
    iget-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ExtraProfileFragment;->access$300(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ExtraProfileFragment;->access$300(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ExtraProfileFragment;->access$300(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Relative;

    .line 163
    iget-wide v1, v1, Lcom/perm/kate/api/Relative;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 164
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 168
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$2;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ExtraProfileFragment;->access$400(Lcom/perm/kate/ExtraProfileFragment;)V

    :cond_4
    :goto_1
    return-void
.end method
