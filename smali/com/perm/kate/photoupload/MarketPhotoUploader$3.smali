.class Lcom/perm/kate/photoupload/MarketPhotoUploader$3;
.super Ljava/lang/Object;
.source "MarketPhotoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MarketPhotoUploader;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$3;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$3;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    iget-object v0, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
