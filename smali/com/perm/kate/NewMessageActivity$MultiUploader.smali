.class Lcom/perm/kate/NewMessageActivity$MultiUploader;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiUploader"
.end annotation


# instance fields
.field protected cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field i:I

.field resizeOption:I

.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;

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
.method public constructor <init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;
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
    .line 739
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->i:I

    .line 765
    new-instance v0, Lcom/perm/kate/NewMessageActivity$MultiUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$MultiUploader$1;-><init>(Lcom/perm/kate/NewMessageActivity$MultiUploader;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 740
    iput-object p2, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    .line 741
    iput p3, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->resizeOption:I

    .line 742
    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/NewMessageActivity$MultiUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity$MultiUploader;

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method

.method private uploadNextPhoto()V
    .locals 10

    .prologue
    .line 749
    iget v1, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->i:I

    .line 750
    iget v1, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->i:I

    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v1}, Lcom/perm/kate/NewMessageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v4, 0x7f07048a

    invoke-virtual {v2, v4}, Lcom/perm/kate/NewMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 755
    .local v7, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    iget v2, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->i:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 756
    .local v3, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v1}, Lcom/perm/kate/NewMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "type":Ljava/lang/String;
    const-string v1, "Kate.NewMessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-eqz v0, :cond_2

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 759
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity$MultiUploader;->uploadNextPhoto()V

    goto :goto_0

    .line 762
    :cond_3
    new-instance v1, Lcom/perm/kate/photoupload/MessageUploader;

    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->this$0:Lcom/perm/kate/NewMessageActivity;

    iget v4, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->resizeOption:I

    iget-object v5, p0, Lcom/perm/kate/NewMessageActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual {v1}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity$MultiUploader;->uploadNextPhoto()V

    .line 746
    return-void
.end method
