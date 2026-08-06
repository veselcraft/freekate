.class Lcom/perm/kate/PollVotersActivity$2;
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
    .line 81
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 97
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PollVotersActivity;->showProgressBar(Z)V

    .line 98
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 85
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v0, :cond_0

    .line 87
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 88
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PollVotersActivity;->access$702(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/PollVotersActivity;->showProgressBar(Z)V

    .line 91
    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/PollVotersActivity;->access$800(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V

    .line 92
    return-void
.end method
