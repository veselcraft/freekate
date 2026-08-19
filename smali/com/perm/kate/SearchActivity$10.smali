.class Lcom/perm/kate/SearchActivity$10;
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

    .line 500
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 521
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 522
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 504
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/SearchActivity;->videos:Ljava/util/ArrayList;

    .line 505
    iget-wide v1, v0, Lcom/perm/kate/SearchActivity;->offset:J

    iget-object p1, v0, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/SearchActivity;->offset:J

    .line 506
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v0, Lcom/perm/kate/SearchActivity$10$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$10$1;-><init>(Lcom/perm/kate/SearchActivity$10;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
