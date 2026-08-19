.class Lcom/perm/kate/GiftsFragment$6;
.super Lcom/perm/kate/session/Callback;
.source "GiftsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 204
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    .line 205
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 183
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/GiftItem;

    .line 187
    iget-object v4, v3, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 188
    iget-object v3, v3, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 191
    iget-object v1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v1}, Lcom/perm/kate/GiftsFragment;->access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p1, v0}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    goto :goto_1

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    .line 196
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p1}, Lcom/perm/kate/GiftsFragment;->access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/perm/kate/GiftsFragment;->access$500(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
