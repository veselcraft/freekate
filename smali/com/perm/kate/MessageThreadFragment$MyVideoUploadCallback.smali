.class Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/VideoUploadCallback;


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2245
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .line 2263
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v1, 0x7f0f055f

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return-void
.end method

.method public success(J)V
    .locals 3

    .line 2250
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->name:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/VideoUploadActivity;->createStubVideo(JLjava/lang/String;)V

    .line 2251
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v1, 0x7f0f055d

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2254
    sget-object p2, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2255
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4600(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method
