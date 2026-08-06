.class Lcom/perm/kate/SearchActivity$18;
.super Lcom/perm/kate/session/Callback;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$18;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 823
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 824
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$18;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 825
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$18;->this$0:Lcom/perm/kate/SearchActivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v0, Lcom/perm/kate/SearchActivity;->users:Ljava/util/ArrayList;

    .line 811
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$18;->this$0:Lcom/perm/kate/SearchActivity;

    iget-wide v2, v0, Lcom/perm/kate/SearchActivity;->offset:J

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$18;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/perm/kate/SearchActivity;->offset:J

    .line 812
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$18;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v1, Lcom/perm/kate/SearchActivity$18$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/SearchActivity$18$1;-><init>(Lcom/perm/kate/SearchActivity$18;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 818
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$18;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 819
    return-void
.end method
