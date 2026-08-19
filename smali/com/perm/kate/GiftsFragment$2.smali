.class Lcom/perm/kate/GiftsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "GiftsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 109
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    .line 110
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7

    .line 88
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/GiftsFragment;->access$302(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/GiftItem;

    .line 93
    iget-object v2, v1, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 94
    iget-object v1, v1, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p1}, Lcom/perm/kate/GiftsFragment;->access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p1, v0}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    .line 102
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p1}, Lcom/perm/kate/GiftsFragment;->access$300(Lcom/perm/kate/GiftsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/perm/kate/GiftsFragment;->access$500(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V

    .line 103
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$2;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
