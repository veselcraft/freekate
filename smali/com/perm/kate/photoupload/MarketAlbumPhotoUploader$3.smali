.class Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$3;
.super Ljava/lang/Object;
.source "MarketAlbumPhotoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$3;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$3;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    iget-object v0, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
