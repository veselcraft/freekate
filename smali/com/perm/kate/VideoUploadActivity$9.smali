.class Lcom/perm/kate/VideoUploadActivity$9;
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
    .line 229
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoUploadActivity;->showProgressBar(Z)V

    .line 239
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoUploadActivity;->access$1400(Lcom/perm/kate/VideoUploadActivity;Z)V

    .line 240
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/VideoUploadActivity;->showProgressBar(Z)V

    .line 233
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 234
    .local v0, "res":Z
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity$9;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/VideoUploadActivity;->access$1400(Lcom/perm/kate/VideoUploadActivity;Z)V

    .line 235
    return-void
.end method
