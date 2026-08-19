.class Lcom/perm/kate/PodcastsActivity$8;
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

    .line 173
    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 191
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/PodcastsActivity;->access$402(Lcom/perm/kate/PodcastsActivity;I)I

    .line 192
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 180
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 181
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {v3}, Lcom/perm/kate/PodcastsActivity;->access$100(Lcom/perm/kate/PodcastsActivity;)I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-static {v0, v1}, Lcom/perm/kate/PodcastsActivity;->access$402(Lcom/perm/kate/PodcastsActivity;I)I

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {v0}, Lcom/perm/kate/PodcastsActivity;->access$300(Lcom/perm/kate/PodcastsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object p1, p0, Lcom/perm/kate/PodcastsActivity$8;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p1}, Lcom/perm/kate/PodcastsActivity;->access$500(Lcom/perm/kate/PodcastsActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
