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
.field static all_photos_dir_id:I


# instance fields
.field all_photos_dir_name:Ljava/lang/String;

.field imageClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x2

    sput v0, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_id:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 142
    new-instance v0, Lcom/perm/kate/PhotoChooserBucketsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoChooserBucketsActivity$1;-><init>(Lcom/perm/kate/PhotoChooserBucketsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity;->imageClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->reportBucket(Ljava/lang/String;)V

    return-void
.end method

.method private getBuckets()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v10, "buckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;>;"
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "bucket_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "bucket_display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 57
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 59
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v10

    .line 62
    :cond_1
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 64
    .local v12, "found":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 65
    .local v13, "imageIdColumn":I
    const-string v0, "bucket_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 66
    .local v8, "bucketIdColumn":I
    const-string v0, "bucket_display_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 68
    .local v9, "bucketNameColumn":I
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 70
    .local v7, "bucketId":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    .line 73
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    .line 75
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v7, v1, v3, v4}, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;-><init>(ILjava/lang/String;II)V

    .line 72
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v7    # "bucketId":I
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    .line 86
    .local v6, "b":Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;
    const/4 v0, 0x0

    new-instance v1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    sget v3, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_id:I

    iget-object v4, p0, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_name:Ljava/lang/String;

    iget v5, v6, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->image_id:I

    iget v14, v6, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->rotate:I

    invoke-direct {v1, v3, v4, v5, v14}, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v10, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "katePhotos"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "buckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    .line 216
    .local v0, "b":Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;
    iget-object v2, v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 222
    .end local v0    # "b":Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;
    :cond_1
    return-void
.end method

.method private reorder(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "buckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;>;"
    const-string v0, "KatePhotos"

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 209
    const-string v0, "Screenshots"

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 210
    const-string v0, "Camera"

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_name:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->moveToTop(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private static reportBucket(Ljava/lang/String;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 197
    .local v2, "time":J
    const-wide/16 v4, 0x3e8

    rem-long v4, v2, v4

    const-wide/16 v6, 0x3e7

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 200
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "PHOTO_BUCKET"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 171
    if-nez p1, :cond_0

    .line 172
    if-ne p2, v3, :cond_0

    .line 173
    const-string v2, "selected_photos"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "selected_photos"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v3, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->finish()V

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    .line 32
    const v2, 0x7f0300cf

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoChooserBucketsActivity;->setContentView(I)V

    .line 34
    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoChooserBucketsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_name:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->getBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    .local v0, "buckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;>;"
    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->reorder(Ljava/util/ArrayList;)V

    .line 41
    const v2, 0x7f0e027e

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoChooserBucketsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 42
    .local v1, "imagegrid":Landroid/widget/GridView;
    new-instance v2, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;-><init>(Lcom/perm/kate/PhotoChooserBucketsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 185
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    .line 186
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 191
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    .line 192
    return-void
.end method
