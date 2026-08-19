.class Lcom/perm/kate/PodcastsActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "PodcastsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PodcastsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PodcastsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PodcastsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity$2;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 80
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$2;->this$0:Lcom/perm/kate/PodcastsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 81
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$2;->this$0:Lcom/perm/kate/PodcastsActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/PodcastsActivity;->access$402(Lcom/perm/kate/PodcastsActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$2;->this$0:Lcom/perm/kate/PodcastsActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/PodcastsActivity;->access$302(Lcom/perm/kate/PodcastsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 72
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$2;->this$0:Lcom/perm/kate/PodcastsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 73
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$2;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p1}, Lcom/perm/kate/PodcastsActivity;->access$300(Lcom/perm/kate/PodcastsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/PodcastsActivity$2;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {v2}, Lcom/perm/kate/PodcastsActivity;->access$100(Lcom/perm/kate/PodcastsActivity;)I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x3

    :cond_0
    invoke-static {p1, v0}, Lcom/perm/kate/PodcastsActivity;->access$402(Lcom/perm/kate/PodcastsActivity;I)I

    .line 74
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$2;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p1}, Lcom/perm/kate/PodcastsActivity;->access$500(Lcom/perm/kate/PodcastsActivity;)V

    return-void
.end method
