.class public Lcom/perm/kate/PhotoChooserActivity;
.super Landroid/app/Activity;
.source "PhotoChooserActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PhotoChooserActivity$ThumbTask;,
        Lcom/perm/kate/PhotoChooserActivity$ViewHolder;,
        Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;
    }
.end annotation


# instance fields
.field checkClickListener:Landroid/view/View$OnClickListener;

.field cursor:Landroid/database/Cursor;

.field openClickListener:Landroid/view/View$OnClickListener;

.field selectBtn:Landroid/widget/Button;

.field selectClickListener:Landroid/view/View$OnClickListener;

.field private thumbnailsselection:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->thumbnailsselection:Ljava/util/LinkedHashSet;

    .line 139
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoChooserActivity$1;-><init>(Lcom/perm/kate/PhotoChooserActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->checkClickListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoChooserActivity$2;-><init>(Lcom/perm/kate/PhotoChooserActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->openClickListener:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoChooserActivity$3;-><init>(Lcom/perm/kate/PhotoChooserActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->selectClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/perm/kate/PhotoChooserActivity;->thumbnailsselection:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public static displayImageInThread(Landroid/widget/ImageView;II)V
    .locals 2

    .line 201
    invoke-static {p1}, Lcom/perm/kate/PhotoChooserActivity;->makeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f080209

    .line 208
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;-><init>(Landroid/widget/ImageView;II)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/ImageLoader;->displayImage(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    :goto_0
    return-void
.end method

.method public static makeKey(I)Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thumb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x103022e

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x103006c

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 50
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    const p1, 0x7f0c00e7

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bucket_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const-string v0, "orientation"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v6, "_id DESC"

    const-string v0, "bucket_id=?"

    new-array v1, v1, [Ljava/lang/String;

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 67
    sget v2, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_id:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    move-object v5, v1

    .line 71
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity;->cursor:Landroid/database/Cursor;

    if-nez p1, :cond_3

    .line 74
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Cursor=null"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const p1, 0x7f090004

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    .line 78
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;

    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v1}, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;-><init>(Lcom/perm/kate/PhotoChooserActivity;Landroid/app/Activity;Landroid/database/Cursor;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f090078

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity;->selectBtn:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->selectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-static {p0, v7}, Lcom/perm/kate/Helper;->fixNavBarColor(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->cursor:Landroid/database/Cursor;

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 313
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 319
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    return-void
.end method
