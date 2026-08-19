.class Lcom/perm/kate/LikesActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "LikesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LikesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LikesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LikesActivity;Landroid/app/Activity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 118
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 119
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/LikesActivity;->access$1002(Lcom/perm/kate/LikesActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 81
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 84
    iget-object v2, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/perm/kate/LikesActivity;->access$702(Lcom/perm/kate/LikesActivity;I)I

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 88
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 93
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    const-wide/16 v4, -0x1

    .line 98
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 100
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 103
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    new-instance v2, Lcom/perm/kate/LikesActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/LikesActivity$2$1;-><init>(Lcom/perm/kate/LikesActivity$2;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 110
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/LikesActivity;->access$1002(Lcom/perm/kate/LikesActivity;I)I

    goto :goto_1

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/LikesActivity;->access$1002(Lcom/perm/kate/LikesActivity;I)I

    :goto_1
    return-void
.end method
