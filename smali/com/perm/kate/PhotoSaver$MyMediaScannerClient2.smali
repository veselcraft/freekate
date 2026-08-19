.class public Lcom/perm/kate/PhotoSaver$MyMediaScannerClient2;
.super Ljava/lang/Object;
.source "PhotoSaver.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scanFiles(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-static {p1, p2, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method
