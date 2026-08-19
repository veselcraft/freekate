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


# direct methods
.method public constructor <init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 1123
    iput p1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    .line 1158
    new-instance p1, Lcom/perm/kate/WallPostActivity$MultiUploader$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/WallPostActivity$MultiUploader$1;-><init>(Lcom/perm/kate/WallPostActivity$MultiUploader;)V

    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1127
    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    .line 1128
    iput p3, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->resizeOption:I

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/WallPostActivity$MultiUploader;)V
    .locals 0

    .line 1120
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method

.method private uploadNextPhoto()V
    .locals 11

    .line 1137
    iget v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    .line 1138
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 1140
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1145
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    const v2, 0x7f0f0519

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1146
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->uris:Ljava/util/ArrayList;

    iget v1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 1147
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kate.WallPostActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v1, "image/"

    .line 1149
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1153
    :cond_2
    new-instance v0, Lcom/perm/kate/photoupload/WallUploader;

    iget-object v3, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v3}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v5

    iget v7, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->resizeOption:I

    iget-object v8, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->cyclicUploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1154
    iput-boolean v1, v0, Lcom/perm/kate/photoupload/WallUploader;->cancel_notification:Z

    .line 1155
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    return-void

    .line 1150
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    const v1, 0x7f0f03e1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 1133
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity$MultiUploader;->uploadNextPhoto()V

    return-void
.end method
