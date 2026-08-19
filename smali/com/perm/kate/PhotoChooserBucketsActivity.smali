.class public Lcom/perm/kate/PhotoChooserBucketsActivity;
.super Landroid/app/Activity;
.source "PhotoChooserBucketsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;,
        Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;
    }
.end annotation


# static fields
.field static all_photos_dir_id:I = -0x2


# instance fields
.field all_photos_dir_name:Ljava/lang/String;

.field imageClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 147
    new-instance v0, Lcom/perm/kate/PhotoChooserBucketsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoChooserBucketsActivity$1;-><init>(Lcom/perm/kate/PhotoChooserBucketsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity;->imageClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->reportBucket(Ljava/lang/String;)V

    return-void
.end method

.method private getBuckets()Ljava/util/ArrayList;
    .locals 13

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v1

    const/4 v2, 0x1

    const-string v9, "bucket_id"

    aput-object v9, v4, v2

    const/4 v2, 0x2

    const-string v10, "bucket_display_name"

    aput-object v10, v4, v2

    const-string v2, "orientation"

    const/4 v11, 0x3

    aput-object v2, v4, v11

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    .line 65
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 67
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 69
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 71
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 73
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v8, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    .line 78
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 80
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-direct {v8, v7, v9, v10, v12}, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;-><init>(ILjava/lang/String;II)V

    .line 77
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    .line 91
    new-instance v3, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    sget v4, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_id:I

    iget-object v5, p0, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_name:Ljava/lang/String;

    iget v6, v2, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->image_id:I

    iget v2, v2, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->rotate:I

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method private moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    .line 220
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    .line 221
    iget-object v2, v1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 223
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private reorder(Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "KatePhotos"

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v0, "Screenshots"

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v0, "Camera"

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_name:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private static reportBucket(Ljava/lang/String;)V
    .locals 5

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 202
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3e7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "name"

    .line 205
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "PHOTO_BUCKET"

    .line 206
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p2, "selected_photos"

    .line 178
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    const p1, 0x7f0c00e9

    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0f0048

    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_name:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->getBuckets()Ljava/util/ArrayList;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoChooserBucketsActivity;->reorder(Ljava/util/ArrayList;)V

    const v0, 0x7f090004

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 43
    new-instance v1, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;-><init>(Lcom/perm/kate/PhotoChooserBucketsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x0

    .line 44
    invoke-static {p0, p1}, Lcom/perm/kate/Helper;->fixNavBarColor(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 190
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 196
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    return-void
.end method
