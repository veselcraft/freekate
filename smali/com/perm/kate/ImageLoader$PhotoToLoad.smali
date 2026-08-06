.class public abstract Lcom/perm/kate/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PhotoToLoad"
.end annotation


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field public key:Ljava/lang/String;

.field mergeable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->mergeable:Z

    .line 451
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    .line 452
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 468
    return-void
.end method

.method abstract display()V
.end method

.method abstract getView()Landroid/view/View;
.end method

.method abstract load()V
.end method

.method abstract setView(Landroid/view/View;)V
.end method
