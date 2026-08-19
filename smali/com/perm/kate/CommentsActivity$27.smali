.class Lcom/perm/kate/CommentsActivity$27;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1082
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1083
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1084
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/perm/kate/CommentsActivity;->access$3300(Lcom/perm/kate/CommentsActivity;Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1058
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1060
    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_2

    .line 1063
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$000(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    .line 1064
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/perm/kate/CommentsActivity;->access$3100(Lcom/perm/kate/CommentsActivity;JJ)V

    goto :goto_1

    .line 1066
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$3200(Lcom/perm/kate/CommentsActivity;)V

    .line 1068
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1069
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/CommentsActivity;->access$3300(Lcom/perm/kate/CommentsActivity;Z)V

    .line 1070
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    new-instance v0, Lcom/perm/kate/CommentsActivity$27$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$27$1;-><init>(Lcom/perm/kate/CommentsActivity$27;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1075
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    .line 1076
    iput-object v0, p1, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    .line 1077
    iget-object p1, p1, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1078
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$27;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p1, p1, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
