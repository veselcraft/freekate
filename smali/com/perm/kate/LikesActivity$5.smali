.class Lcom/perm/kate/LikesActivity$5;
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

    .line 158
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 192
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 193
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/LikesActivity;->access$1002(Lcom/perm/kate/LikesActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 162
    check-cast p1, Ljava/util/ArrayList;

    .line 166
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    const-wide/16 v3, -0x1

    .line 171
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 173
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 176
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    new-instance v2, Lcom/perm/kate/LikesActivity$5$1;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/LikesActivity$5$1;-><init>(Lcom/perm/kate/LikesActivity$5;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v0}, Lcom/perm/kate/LikesActivity;->access$700(Lcom/perm/kate/LikesActivity;)I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/perm/kate/LikesActivity;->access$702(Lcom/perm/kate/LikesActivity;I)I

    .line 183
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 184
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/LikesActivity;->access$1002(Lcom/perm/kate/LikesActivity;I)I

    goto :goto_1

    .line 186
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$5;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/LikesActivity;->access$1002(Lcom/perm/kate/LikesActivity;I)I

    :goto_1
    return-void
.end method
