.class Lcom/perm/kate/VideoUploadActivity$10;
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

    .line 280
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 290
    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/VideoUploadActivity;->access$1300(Lcom/perm/kate/VideoUploadActivity;Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 284
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 285
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$10;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/VideoUploadActivity;->access$1300(Lcom/perm/kate/VideoUploadActivity;Z)V

    return-void
.end method
