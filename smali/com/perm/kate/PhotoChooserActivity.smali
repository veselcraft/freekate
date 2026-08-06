.class public Lcom/perm/kate/PhotoChooserActivity;
.super Landroid/app/Activity;
.source "PhotoChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PhotoChooserActivity$ThumbTask;,
        Lcom/perm/kate/PhotoChooserActivity$ViewHolder;,
        Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;
    }
.end annotation


# instance fields
.field checkClickListener:Landroid/view/View$OnClickListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field pauser:Lcom/perm/utils/ScrollPauser;

.field selectBtn:Landroid/widget/Button;

.field selectClickListener:Landroid/view/View$OnClickListener;

.field private thumbnailsselection:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->thumbnailsselection:Ljava/util/LinkedHashSet;

    .line 38
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 130
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoChooserActivity$1;-><init>(Lcom/perm/kate/PhotoChooserActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->checkClickListener:Landroid/view/View$OnClickListener;

    .line 155
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoChooserActivity$2;-><init>(Lcom/perm/kate/PhotoChooserActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->selectClickListener:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoChooserActivity$3;-><init>(Lcom/perm/kate/PhotoChooserActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoChooserActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->thumbnailsselection:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 36
    invoke-static {p0}, Lcom/perm/kate/PhotoChooserActivity;->makeKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static displayImageInThread(Landroid/widget/ImageView;II)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "id"    # I
    .param p2, "rotate"    # I

    .prologue
    .line 182
    invoke-static {p1}, Lcom/perm/kate/PhotoChooserActivity;->makeKey(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 189
    :cond_0
    const v2, 0x7f020144

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/perm/kate/PhotoChooserActivity$ThumbTask;-><init>(Landroid/widget/ImageView;II)V

    invoke-virtual {v2, v3}, Lcom/perm/kate/ImageLoader;->displayImage(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    goto :goto_0
.end method

.method private static makeKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thumb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, -0x1

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 48
    const v0, 0x103022e

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoChooserActivity;->setTheme(I)V

    .line 53
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    .line 55
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoChooserActivity;->setContentView(I)V

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/perm/kate/PhotoChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bucket_id"

    const/4 v10, -0x1

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 59
    .local v6, "bucket_id":I
    if-ne v6, v11, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/perm/kate/PhotoChooserActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v6    # "bucket_id":I
    :goto_1
    return-void

    .line 49
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 50
    const v0, 0x103006c

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoChooserActivity;->setTheme(I)V

    goto :goto_0

    .line 52
    :cond_1
    const v0, 0x1030009

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoChooserActivity;->setTheme(I)V

    goto :goto_0

    .line 64
    .restart local v6    # "bucket_id":I
    :cond_2
    const/4 v0, 0x2

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 65
    .local v2, "columns":[Ljava/lang/String;
    const-string v5, "_id DESC"

    .line 66
    .local v5, "orderBy":Ljava/lang/String;
    const-string v3, "bucket_id=?"

    .line 67
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 68
    .local v4, "selection_args":[Ljava/lang/String;
    sget v0, Lcom/perm/kate/PhotoChooserBucketsActivity;->all_photos_dir_id:I

    if-ne v6, v0, :cond_3

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 72
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/PhotoChooserActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 74
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 75
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Cursor=null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 84
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selection_args":[Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "bucket_id":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 86
    .local v9, "th":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 78
    .end local v9    # "th":Ljava/lang/Throwable;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selection_args":[Ljava/lang/String;
    .restart local v5    # "orderBy":Ljava/lang/String;
    .restart local v6    # "bucket_id":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    const v0, 0x7f0e027e

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    .line 79
    .local v8, "imagegrid":Landroid/widget/GridView;
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;

    invoke-direct {v0, p0, p0, v7}, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;-><init>(Lcom/perm/kate/PhotoChooserActivity;Landroid/app/Activity;Landroid/database/Cursor;)V

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 82
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->selectBtn:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity;->selectBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity;->selectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 315
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    .line 316
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 321
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    .line 322
    return-void
.end method
