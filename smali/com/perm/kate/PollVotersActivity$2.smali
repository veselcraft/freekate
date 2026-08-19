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

    .line 81
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 97
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 85
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 87
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PollVotersActivity;->access$702(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 91
    iget-object p1, p0, Lcom/perm/kate/PollVotersActivity$2;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {p1}, Lcom/perm/kate/PollVotersActivity;->access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/PollVotersActivity;->access$800(Lcom/perm/kate/PollVotersActivity;Ljava/util/ArrayList;)V

    return-void
.end method
