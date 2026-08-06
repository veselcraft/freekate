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
    .param p1, "this$0"    # Lcom/perm/kate/PollVotersActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 223
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/PollVotersActivity;->access$902(Lcom/perm/kate/PollVotersActivity;I)I

    .line 224
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PollVotersActivity;->showProgressBar(Z)V

    .line 225
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 206
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    if-nez v2, :cond_0

    .line 218
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 208
    check-cast v1, Ljava/util/ArrayList;

    .line 209
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 210
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 211
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 212
    .local v0, "u":Lcom/perm/kate/api/User;
    iget-object v3, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v3}, Lcom/perm/kate/PollVotersActivity;->access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    .end local v0    # "u":Lcom/perm/kate/api/User;
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    iget-object v3, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v3}, Lcom/perm/kate/PollVotersActivity;->access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/PollVotersActivity;->access$800(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V

    .line 214
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2, v4}, Lcom/perm/kate/PollVotersActivity;->access$902(Lcom/perm/kate/PollVotersActivity;I)I

    .line 217
    :goto_2
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-virtual {v2, v4}, Lcom/perm/kate/PollVotersActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$7;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/perm/kate/PollVotersActivity;->access$902(Lcom/perm/kate/PollVotersActivity;I)I

    goto :goto_2
.end method
