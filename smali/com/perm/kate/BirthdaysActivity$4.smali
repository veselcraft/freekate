.class Lcom/perm/kate/BirthdaysActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "BirthdaysActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BirthdaysActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BirthdaysActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdaysActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BirthdaysActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 130
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BirthdaysActivity;->showProgressBar(Z)V

    .line 131
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 116
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 117
    .local v0, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {v2}, Lcom/perm/kate/BirthdaysActivity;->access$000(Lcom/perm/kate/BirthdaysActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->createFriends(Ljava/util/ArrayList;J)V

    .line 118
    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-virtual {v1}, Lcom/perm/kate/BirthdaysActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    new-instance v2, Lcom/perm/kate/BirthdaysActivity$4$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/BirthdaysActivity$4$1;-><init>(Lcom/perm/kate/BirthdaysActivity$4;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/BirthdaysActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    :cond_0
    return-void
.end method
