.class Lcom/perm/kate/LikesActivity$3;
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

    .line 123
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 144
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 145
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/LikesActivity;->access$1002(Lcom/perm/kate/LikesActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 127
    check-cast p1, Ljava/util/ArrayList;

    .line 130
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 131
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 132
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    new-instance v1, Lcom/perm/kate/LikesActivity$3$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/LikesActivity$3$1;-><init>(Lcom/perm/kate/LikesActivity$3;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    iget-object p1, p0, Lcom/perm/kate/LikesActivity$3;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/LikesActivity;->access$1002(Lcom/perm/kate/LikesActivity;I)I

    return-void
.end method
