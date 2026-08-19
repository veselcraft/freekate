.class Lcom/perm/kate/MessageThreadFragment$66;
.super Lcom/perm/kate/photoupload/DocUploadCallback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3471
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$66;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Lcom/perm/kate/photoupload/DocUploadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/io/File;)V
    .locals 1

    .line 3484
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$66;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v0, 0x7f0f046b

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3

    .line 3474
    check-cast p1, Lcom/perm/kate/api/Document;

    .line 3475
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createDoc(Lcom/perm/kate/api/Document;)J

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Document;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3477
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3478
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3479
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$66;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4600(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method
