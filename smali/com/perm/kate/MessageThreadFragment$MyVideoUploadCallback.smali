.class Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/VideoUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyVideoUploadCallback"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v1, 0x7f0704db

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->displayToast(I)V

    .line 1419
    return-void
.end method

.method public success(J)V
    .locals 5
    .param p1, "video_id_tmp"    # J

    .prologue
    .line 1404
    move-wide v2, p1

    .line 1405
    .local v2, "video_id":J
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->name:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/perm/kate/VideoUploadActivity;->createStubVideo(JLjava/lang/String;)V

    .line 1406
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v4, 0x7f0704d9

    invoke-virtual {v1, v4}, Lcom/perm/kate/MessageThreadFragment;->displayToast(I)V

    .line 1408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1409
    .local v0, "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v4, "video"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$2900(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1414
    return-void
.end method
