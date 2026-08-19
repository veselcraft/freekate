.class public Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "PhotoSaver.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 179
    new-instance p2, Landroid/media/MediaScannerConnection;

    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p2, p0, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;->mConnection:Landroid/media/MediaScannerConnection;

    .line 180
    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method
