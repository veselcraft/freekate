.class Lcom/perm/kate/VideoUploadActivity$6;
.super Lcom/perm/kate/session/Callback;
.source "VideoUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoUploadActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoUploadActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoUploadActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoUploadActivity;->showProgressBar(Z)V

    .line 197
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 185
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v1, v4}, Lcom/perm/kate/VideoUploadActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 186
    check-cast v0, Ljava/util/ArrayList;

    .line 187
    .local v0, "video":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    iget-object v1, v1, Lcom/perm/kate/api/Video;->privacy_view:Lcom/perm/kate/api/Privacy;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    iget-object v1, v1, Lcom/perm/kate/api/Video;->privacy_view:Lcom/perm/kate/api/Privacy;

    invoke-virtual {v1}, Lcom/perm/kate/api/Privacy;->getFirstValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v3, v1}, Lcom/perm/kate/VideoUploadActivity;->access$102(Lcom/perm/kate/VideoUploadActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    iget-object v1, v1, Lcom/perm/kate/api/Video;->privacy_comment:Lcom/perm/kate/api/Privacy;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    iget-object v1, v1, Lcom/perm/kate/api/Video;->privacy_comment:Lcom/perm/kate/api/Privacy;

    invoke-virtual {v1}, Lcom/perm/kate/api/Privacy;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v3, v2}, Lcom/perm/kate/VideoUploadActivity;->access$202(Lcom/perm/kate/VideoUploadActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoUploadActivity;->access$600(Lcom/perm/kate/VideoUploadActivity;)V

    .line 193
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    .line 189
    goto :goto_0
.end method
