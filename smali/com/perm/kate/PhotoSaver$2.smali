.class Lcom/perm/kate/PhotoSaver$2;
.super Ljava/lang/Object;
.source "PhotoSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/PhotosActivity;

.field final synthetic val$destination_dir:Ljava/io/File;

.field final synthetic val$photo_size:I

.field final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/io/File;ILcom/perm/kate/PhotosActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/perm/kate/PhotoSaver$2;->val$photos:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/PhotoSaver$2;->val$destination_dir:Ljava/io/File;

    iput p3, p0, Lcom/perm/kate/PhotoSaver$2;->val$photo_size:I

    iput-object p4, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/perm/kate/PhotoSaver$2;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/perm/kate/PhotoSaver$2;->val$destination_dir:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    iget v5, p0, Lcom/perm/kate/PhotoSaver$2;->val$photo_size:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_0

    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 216
    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    :goto_1
    const/4 v7, 0x1

    goto :goto_2

    .line 218
    :cond_0
    iget v5, p0, Lcom/perm/kate/PhotoSaver$2;->val$photo_size:I

    if-le v5, v4, :cond_1

    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 219
    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    goto :goto_1

    .line 221
    :cond_1
    iget v5, p0, Lcom/perm/kate/PhotoSaver$2;->val$photo_size:I

    if-lez v5, :cond_2

    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 222
    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    goto :goto_1

    .line 225
    :cond_2
    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const/4 v7, 0x0

    .line 226
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 227
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Empty url"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "src_big="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";src_xbig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";src_xxbig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";src_xxxbig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_3
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    move v4, v7

    :goto_3
    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 234
    invoke-static {v7, v5, v6, v3, v7}, Lcom/perm/kate/PhotoSaver;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    goto :goto_4

    .line 236
    :cond_5
    invoke-static {v7, v2, v6, v3}, Lcom/perm/kate/PhotoSaver;->access$100(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V

    .line 237
    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 239
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 240
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 241
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    if-lez v1, :cond_8

    .line 244
    new-instance v0, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient2;

    invoke-direct {v0}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient2;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient2;->scanFiles(Landroid/content/Context;[Ljava/lang/String;)V

    .line 246
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    iget-object v2, p0, Lcom/perm/kate/PhotoSaver$2;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_9

    const v2, 0x7f0f03d9

    goto :goto_6

    :cond_9
    const v2, 0x7f0f054d

    :goto_6
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/PhotoSaver$2;->val$destination_dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    if-eqz v1, :cond_a

    .line 248
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method
