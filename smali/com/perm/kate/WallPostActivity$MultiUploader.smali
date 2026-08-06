.class Lcom/perm/kate/WallPostActivity$MultiUploader;
.super Ljava/lang/Object;
.source "WallPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiUploader"
.end annotation


# instance fields
.field protected cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field i:I

.field resizeOption:I

.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;

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
.method public constructor <init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;
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
    .line 1098
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    .line 1130
    new-instance v0, Lcom/perm/kate/WallPostActivity$MultiUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$MultiUploader$1;-><init>(Lcom/perm/kate/WallPostActivity$MultiUploader;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1099
    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    .line 1100
    iput p3, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->resizeOption:I

    .line 1101
    return-void
.end method

.method static synthetic access$3800(Lcom/perm/kate/WallPostActivity$MultiUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity$MultiUploader;

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method

.method private uploadNextPhoto()V
    .locals 10

    .prologue
    .line 1109
    iget v2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    .line 1110
    iget v2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    iget-object v4, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 1111
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    const v4, 0x7f0700e1

    invoke-virtual {v2, v4}, Lcom/perm/kate/WallPostActivity;->displayToast(I)V

    .line 1112
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v2}, Lcom/perm/kate/WallPostActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    const v5, 0x7f07048a

    invoke-virtual {v4, v5}, Lcom/perm/kate/WallPostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1118
    .local v9, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    iget v4, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1119
    .local v3, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v2}, Lcom/perm/kate/WallPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "type":Ljava/lang/String;
    const-string v2, "Kate.WallPostActivity"

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

    .line 1121
    if-eqz v0, :cond_2

    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1122
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity$MultiUploader;->uploadNextPhoto()V

    goto :goto_0

    .line 1125
    :cond_3
    new-instance v1, Lcom/perm/kate/photoupload/WallUploader;

    iget-object v2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    iget-object v4, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v4}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v4

    iget v6, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->resizeOption:I

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1126
    .local v1, "w":Lcom/perm/kate/photoupload/WallUploader;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/perm/kate/photoupload/WallUploader;->cancel_notification:Z

    .line 1127
    invoke-virtual {v1}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    const v1, 0x7f070378

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallPostActivity;->displayToast(I)V

    .line 1105
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity$MultiUploader;->uploadNextPhoto()V

    .line 1106
    return-void
.end method
