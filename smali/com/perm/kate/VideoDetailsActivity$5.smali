.class Lcom/perm/kate/VideoDetailsActivity$5;
.super Lcom/perm/kate/session/Callback;
.source "VideoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoDetailsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoDetailsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$5;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 165
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity$5;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoDetailsActivity;->showProgressBar(Z)V

    .line 166
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v1, p0, Lcom/perm/kate/VideoDetailsActivity$5;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/VideoDetailsActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 155
    check-cast v0, Ljava/util/ArrayList;

    .line 156
    .local v0, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 157
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 158
    iget-object v1, p0, Lcom/perm/kate/VideoDetailsActivity$5;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoDetailsActivity;->access$300(Lcom/perm/kate/VideoDetailsActivity;)V

    .line 160
    :cond_0
    return-void
.end method
