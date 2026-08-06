.class final Lcom/my/target/core/ui/views/CacheImageView$a;
.super Landroid/os/AsyncTask;
.source "CacheImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/CacheImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/CacheImageView;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/my/target/core/ui/views/CacheImageView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->c:Landroid/content/Context;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Lcom/my/target/core/ui/views/CacheImageView;Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/ui/views/CacheImageView$a;-><init>(Lcom/my/target/core/ui/views/CacheImageView;Landroid/content/Context;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/CacheImageView;->a(Lcom/my/target/core/ui/views/CacheImageView;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/CacheImageView;->a(Lcom/my/target/core/ui/views/CacheImageView;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->b:Landroid/graphics/Bitmap;

    .line 124
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/my/target/core/utils/e;->a(Landroid/content/Context;)Lcom/my/target/core/utils/e;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/CacheImageView;->a(Lcom/my/target/core/ui/views/CacheImageView;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->b:Landroid/graphics/Bitmap;

    .line 130
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/CacheImageView;->a(Lcom/my/target/core/ui/views/CacheImageView;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/models/ImageData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/my/target/core/ui/views/CacheImageView$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 104
    .line 1143
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/CacheImageView;->a(Lcom/my/target/core/ui/views/CacheImageView;)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->a:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/CacheImageView$a;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 104
    :cond_0
    return-void
.end method
