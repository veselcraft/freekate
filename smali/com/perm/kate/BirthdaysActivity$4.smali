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

    .line 111
    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 130
    iget-object p1, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 116
    check-cast p1, Ljava/util/ArrayList;

    .line 117
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {v1}, Lcom/perm/kate/BirthdaysActivity;->access$000(Lcom/perm/kate/BirthdaysActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/db/DataHelper;->createFriends(Ljava/util/ArrayList;J)V

    .line 118
    iget-object p1, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    new-instance v0, Lcom/perm/kate/BirthdaysActivity$4$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BirthdaysActivity$4$1;-><init>(Lcom/perm/kate/BirthdaysActivity$4;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
