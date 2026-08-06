.class Lcom/perm/kate/GiftsFragment$6;
.super Lcom/perm/kate/session/Callback;
.source "GiftsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GiftsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GiftsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 204
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    .line 205
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GiftsFragment;->showProgressBar(Z)V

    .line 206
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 183
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 184
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    if-eqz v1, :cond_2

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, "users_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/GiftItem;

    .line 187
    .local v0, "item":Lcom/perm/kate/api/GiftItem;
    iget-object v4, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 188
    iget-object v4, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v0    # "item":Lcom/perm/kate/api/GiftItem;
    :cond_1
    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 191
    iget-object v3, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v3}, Lcom/perm/kate/GiftsFragment;->access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v3, v8}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    .line 196
    :goto_1
    iget-object v3, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    iget-object v4, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v4}, Lcom/perm/kate/GiftsFragment;->access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/perm/kate/GiftsFragment;->access$500(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V

    .line 198
    .end local v2    # "users_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {v3, v8}, Lcom/perm/kate/GiftsFragment;->showProgressBar(Z)V

    .line 199
    return-void

    .line 195
    .restart local v2    # "users_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    iget-object v3, p0, Lcom/perm/kate/GiftsFragment$6;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    goto :goto_1
.end method
