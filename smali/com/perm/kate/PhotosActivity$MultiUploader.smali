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


# direct methods
.method public constructor <init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 599
    iput p1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    .line 633
    new-instance p1, Lcom/perm/kate/PhotosActivity$MultiUploader$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/PhotosActivity$MultiUploader$1;-><init>(Lcom/perm/kate/PhotosActivity$MultiUploader;)V

    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 603
    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    .line 604
    iput p3, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->resizeOption:I

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/PhotosActivity$MultiUploader;)V
    .locals 0

    .line 596
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method

.method private uploadNextPhoto()V
    .locals 13

    .line 613
    iget v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    .line 614
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    const v1, 0x7f0f03c4

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 616
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    const v2, 0x7f0f0519

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 620
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 621
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kate.PhotosActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string v1, "image/"

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 627
    :cond_1
    new-instance v0, Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v3, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v5, v3, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-object v7, v3, Lcom/perm/kate/PhotosActivity;->group_id:Ljava/lang/Long;

    const/4 v8, 0x0

    iget v9, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->resizeOption:I

    iget-object v10, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/perm/kate/photoupload/AlbumUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JLjava/lang/Long;Ljava/lang/String;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 629
    iput-boolean v1, v0, Lcom/perm/kate/photoupload/AlbumUploader;->cancel_notification:Z

    .line 630
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/AlbumUploader;->upload()V

    return-void

    .line 624
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    const v1, 0x7f0f03e1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 609
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method
