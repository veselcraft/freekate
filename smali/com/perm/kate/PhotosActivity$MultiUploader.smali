.class Lcom/perm/kate/PhotosActivity$MultiUploader;
.super Ljava/lang/Object;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiUploader"
.end annotation


# instance fields
.field protected cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field i:I

.field resizeOption:I

.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;

.field uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;
    .param p3, "resize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    .line 600
    new-instance v0, Lcom/perm/kate/PhotosActivity$MultiUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$MultiUploader$1;-><init>(Lcom/perm/kate/PhotosActivity$MultiUploader;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 570
    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    .line 571
    iput p3, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->resizeOption:I

    .line 572
    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PhotosActivity$MultiUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity$MultiUploader;

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method

.method private uploadNextPhoto()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 580
    iget v2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    .line 581
    iget v2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 582
    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    const v4, 0x7f07035b

    invoke-virtual {v2, v4}, Lcom/perm/kate/PhotosActivity;->displayToast(I)V

    .line 583
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 598
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    const v5, 0x7f07048a

    invoke-virtual {v4, v5}, Lcom/perm/kate/PhotosActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 587
    .local v10, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    iget v4, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 588
    .local v3, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v2}, Lcom/perm/kate/PhotosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "type":Ljava/lang/String;
    const-string v2, "Kate.PhotosActivity"

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

    .line 590
    if-eqz v0, :cond_1

    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity$MultiUploader;->uploadNextPhoto()V

    goto :goto_0

    .line 594
    :cond_2
    new-instance v1, Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v4, v4, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-object v6, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v6, v6, Lcom/perm/kate/PhotosActivity;->group_id:Ljava/lang/Long;

    iget v8, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->resizeOption:I

    iget-object v9, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object v11, v7

    invoke-direct/range {v1 .. v11}, Lcom/perm/kate/photoupload/AlbumUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JLjava/lang/Long;Ljava/lang/String;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    .local v1, "a":Lcom/perm/kate/photoupload/AlbumUploader;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/perm/kate/photoupload/AlbumUploader;->cancel_notification:Z

    .line 597
    invoke-virtual {v1}, Lcom/perm/kate/photoupload/AlbumUploader;->upload()V

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    const v1, 0x7f070378

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotosActivity;->displayToast(I)V

    .line 576
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity$MultiUploader;->uploadNextPhoto()V

    .line 577
    return-void
.end method
