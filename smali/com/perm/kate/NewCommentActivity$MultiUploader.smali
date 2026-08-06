.class Lcom/perm/kate/NewCommentActivity$MultiUploader;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiUploader"
.end annotation


# instance fields
.field protected cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field i:I

.field resizeOption:I

.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;

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
.method public constructor <init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/NewCommentActivity;
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
    .line 779
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->i:I

    .line 805
    new-instance v0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$MultiUploader$1;-><init>(Lcom/perm/kate/NewCommentActivity$MultiUploader;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 780
    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    .line 781
    iput p3, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->resizeOption:I

    .line 782
    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/NewCommentActivity$MultiUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity$MultiUploader;

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method

.method private uploadNextPhoto()V
    .locals 10

    .prologue
    .line 789
    iget v1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->i:I

    .line 790
    iget v1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->i:I

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v1}, Lcom/perm/kate/NewCommentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->this$0:Lcom/perm/kate/NewCommentActivity;

    const v4, 0x7f07048a

    invoke-virtual {v2, v4}, Lcom/perm/kate/NewCommentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 795
    .local v9, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    iget v2, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->i:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 796
    .local v3, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v1}, Lcom/perm/kate/NewCommentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "type":Ljava/lang/String;
    const-string v1, "Kate.NewCommentActivity"

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

    .line 798
    if-eqz v0, :cond_2

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 799
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity$MultiUploader;->uploadNextPhoto()V

    goto :goto_0

    .line 802
    :cond_3
    new-instance v1, Lcom/perm/kate/photoupload/WallUploader;

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->this$0:Lcom/perm/kate/NewCommentActivity;

    iget-object v4, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v4}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->resizeOption:I

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity$MultiUploader;->uploadNextPhoto()V

    .line 786
    return-void
.end method
