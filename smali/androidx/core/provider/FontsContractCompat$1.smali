.class final Landroidx/core/provider/FontsContractCompat$1;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Landroidx/core/provider/FontRequest;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$1;->val$request:Landroidx/core/provider/FontRequest;

    iput p3, p0, Landroidx/core/provider/FontsContractCompat$1;->val$style:I

    iput-object p4, p0, Landroidx/core/provider/FontsContractCompat$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    .locals 4

    .line 259
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroidx/core/provider/FontsContractCompat$1;->val$request:Landroidx/core/provider/FontRequest;

    iget v2, p0, Landroidx/core/provider/FontsContractCompat$1;->val$style:I

    invoke-static {v0, v1, v2}, Landroidx/core/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v0

    .line 260
    iget-object v1, v0, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 261
    sget-object v2, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    iget-object v3, p0, Landroidx/core/provider/FontsContractCompat$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$1;->call()Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v0

    return-object v0
.end method
