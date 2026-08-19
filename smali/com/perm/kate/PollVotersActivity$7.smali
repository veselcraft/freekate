.class Lcom/perm/kate/PollVotersActivity$7;
.super Lcom/perm/kate/session/Callback;
.source "PollVotersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollVotersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollVotersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollVotersActivity;Landroid/app/Activity;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 223
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/PollVotersActivity;->access$902(Lcom/perm/kate/PollVotersActivity;I)I

    .line 224
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 210
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 212
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {p1}, Lcom/perm/kate/PollVotersActivity;->access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/perm/kate/PollVotersActivity;->access$800(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V

    .line 214
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/PollVotersActivity;->access$902(Lcom/perm/kate/PollVotersActivity;I)I

    goto :goto_1

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/PollVotersActivity;->access$902(Lcom/perm/kate/PollVotersActivity;I)I

    .line 217
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
