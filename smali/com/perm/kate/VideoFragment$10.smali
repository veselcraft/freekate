.class Lcom/perm/kate/VideoFragment$10;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/VideoUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$10;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$10;->this$0:Lcom/perm/kate/VideoFragment;

    const v1, 0x7f0704db

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoFragment;->displayToast(I)V

    .line 461
    return-void
.end method

.method public success(J)V
    .locals 2
    .param p1, "video_id_tmp"    # J

    .prologue
    .line 455
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$10;->this$0:Lcom/perm/kate/VideoFragment;

    const v1, 0x7f0704d9

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoFragment;->displayToast(I)V

    .line 456
    return-void
.end method
