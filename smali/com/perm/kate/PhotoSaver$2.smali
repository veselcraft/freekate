.class final Lcom/perm/kate/PhotoSaver$2;
.super Ljava/lang/Object;
.source "PhotoSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoSaver;->savePhotos(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/PhotosActivity;

.field final synthetic val$destination_dir:Ljava/io/File;

.field final synthetic val$photo_size:I

.field final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/io/File;ILcom/perm/kate/PhotosActivity;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/perm/kate/PhotoSaver$2;->val$photos:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/PhotoSaver$2;->val$destination_dir:Ljava/io/File;

    iput p3, p0, Lcom/perm/kate/PhotoSaver$2;->val$photo_size:I

    iput-object p4, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v3, "filenames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 199
    .local v1, "destination_file":Ljava/io/File;
    iget-object v10, p0, Lcom/perm/kate/PhotoSaver$2;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/Photo;

    .line 200
    .local v8, "photo":Lcom/perm/kate/api/Photo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "destination_filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "destination_file":Ljava/io/File;
    iget-object v11, p0, Lcom/perm/kate/PhotoSaver$2;->val$destination_dir:Ljava/io/File;

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .restart local v1    # "destination_file":Ljava/io/File;
    const/4 v6, 0x0

    .line 205
    .local v6, "need_download":Z
    iget v11, p0, Lcom/perm/kate/PhotoSaver$2;->val$photo_size:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    iget-object v11, v8, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, v8, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 206
    iget-object v9, v8, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    .line 207
    .local v9, "url":Ljava/lang/String;
    const/4 v6, 0x1

    .line 216
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 217
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "Empty url"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "src_big="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";src_xbig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";src_xxbig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";src_xxxbig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v9    # "url":Ljava/lang/String;
    :cond_0
    iget v11, p0, Lcom/perm/kate/PhotoSaver$2;->val$photo_size:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    iget-object v11, v8, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, v8, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 209
    iget-object v9, v8, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    .line 210
    .restart local v9    # "url":Ljava/lang/String;
    const/4 v6, 0x1

    goto :goto_1

    .line 211
    .end local v9    # "url":Ljava/lang/String;
    :cond_1
    iget v11, p0, Lcom/perm/kate/PhotoSaver$2;->val$photo_size:I

    if-lez v11, :cond_2

    iget-object v11, v8, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v8, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 212
    iget-object v9, v8, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    .line 213
    .restart local v9    # "url":Ljava/lang/String;
    const/4 v6, 0x1

    goto :goto_1

    .line 215
    .end local v9    # "url":Ljava/lang/String;
    :cond_2
    iget-object v9, v8, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .restart local v9    # "url":Ljava/lang/String;
    goto :goto_1

    .line 220
    :cond_3
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 221
    .local v0, "cache_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 222
    const/4 v6, 0x1

    .line 223
    :cond_4
    if-eqz v6, :cond_5

    .line 224
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v9, v1, v12, v13}, Lcom/perm/kate/PhotoSaver;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    .line 227
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 226
    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v0, v1, v12}, Lcom/perm/kate/PhotoSaver;->access$100(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_2

    .line 229
    .end local v0    # "cache_file":Ljava/io/File;
    .end local v2    # "destination_filename":Ljava/lang/String;
    .end local v6    # "need_download":Z
    .end local v8    # "photo":Lcom/perm/kate/api/Photo;
    .end local v9    # "url":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    .line 230
    .local v7, "paths":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 231
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v7, v4

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 233
    :cond_7
    array-length v10, v7

    if-lez v10, :cond_8

    .line 234
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x8

    if-lt v10, v11, :cond_a

    .line 235
    new-instance v10, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient2;

    invoke-direct {v10}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient2;-><init>()V

    iget-object v11, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v11}, Lcom/perm/kate/PhotosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient2;->scanFiles(Landroid/content/Context;[Ljava/lang/String;)V

    .line 240
    :cond_8
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    iget-object v10, p0, Lcom/perm/kate/PhotoSaver$2;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_b

    const v10, 0x7f070370

    :goto_5
    invoke-virtual {v12, v10}, Lcom/perm/kate/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/PhotoSaver$2;->val$destination_dir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "message":Ljava/lang/String;
    iget-object v10, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    if-eqz v10, :cond_9

    .line 242
    iget-object v10, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v10, v5}, Lcom/perm/kate/PhotosActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 243
    :cond_9
    return-void

    .line 237
    .end local v5    # "message":Ljava/lang/String;
    :cond_a
    new-instance v10, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;

    iget-object v11, p0, Lcom/perm/kate/PhotoSaver$2;->val$activity:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v11}, Lcom/perm/kate/PhotosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 240
    :cond_b
    const v10, 0x7f0704c8

    goto :goto_5
.end method
