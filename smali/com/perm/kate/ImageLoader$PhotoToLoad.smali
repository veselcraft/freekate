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

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 599
    iput-boolean v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->mergeable:Z

    .line 594
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

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
