.class Lcom/perm/kate/VideoUploadActivity$7;
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

    .line 230
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 235
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 238
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Video;

    iget-object v2, v2, Lcom/perm/kate/api/Video;->privacy_view:Lcom/perm/kate/api/Privacy;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Video;

    iget-object v2, v2, Lcom/perm/kate/api/Video;->privacy_view:Lcom/perm/kate/api/Privacy;

    iget-object v2, v2, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/perm/kate/VideoUploadActivity;->access$202(Lcom/perm/kate/VideoUploadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 239
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Video;

    iget-object v2, v2, Lcom/perm/kate/api/Video;->privacy_comment:Lcom/perm/kate/api/Privacy;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Video;

    iget-object p1, p1, Lcom/perm/kate/api/Video;->privacy_comment:Lcom/perm/kate/api/Privacy;

    iget-object v3, p1, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    :cond_1
    invoke-static {v0, v3}, Lcom/perm/kate/VideoUploadActivity;->access$402(Lcom/perm/kate/VideoUploadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 240
    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity$7;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {p1}, Lcom/perm/kate/VideoUploadActivity;->access$000(Lcom/perm/kate/VideoUploadActivity;)V

    :cond_2
    return-void
.end method
