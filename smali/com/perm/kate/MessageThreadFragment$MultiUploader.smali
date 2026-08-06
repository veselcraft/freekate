.class Lcom/perm/kate/MessageThreadFragment$MultiUploader;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiUploader"
.end annotation


# instance fields
.field protected cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field i:I

.field resizeOption:I

.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p3, "resize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1804
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1801
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    .line 1836
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;-><init>(Lcom/perm/kate/MessageThreadFragment$MultiUploader;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1805
    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uris:Ljava/util/ArrayList;

    .line 1806
    iput p3, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->resizeOption:I

    .line 1807
    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/MessageThreadFragment$MultiUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment$MultiUploader;

    .prologue
    .line 1798
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uploadNextPhoto()V

    return-void
.end method

.method private uploadNextPhoto()V
    .locals 10

    .prologue
    .line 1815
    iget v2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    .line 1816
    iget v2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 1817
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v4, 0x7f0700e1

    invoke-virtual {v2, v4}, Lcom/perm/kate/MessageThreadFragment;->displayToast(I)V

    .line 1818
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 1834
    :cond_0
    :goto_0
    return-void

    .line 1821
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v5, 0x7f07048a

    invoke-virtual {v4, v5}, Lcom/perm/kate/MessageThreadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1824
    .local v7, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uris:Ljava/util/ArrayList;

    iget v4, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->i:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1825
    .local v3, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    .local v0, "type":Ljava/lang/String;
    const-string v2, "Kate.MessageThreadFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    if-eqz v0, :cond_2

    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1828
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uploadNextPhoto()V

    goto :goto_0

    .line 1831
    :cond_3
    new-instance v1, Lcom/perm/kate/photoupload/MessageUploader;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->resizeOption:I

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v8, v8, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    .line 1832
    .local v1, "m":Lcom/perm/kate/photoupload/MessageUploader;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/perm/kate/photoupload/MessageUploader;->cancel_notification:Z

    .line 1833
    invoke-virtual {v1}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v1, 0x7f070378

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->displayToast(I)V

    .line 1811
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->uploadNextPhoto()V

    .line 1812
    return-void
.end method
