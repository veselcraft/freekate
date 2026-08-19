.class Lcom/perm/kate/PhotosActivity$10;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$10;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$10;->this$0:Lcom/perm/kate/PhotosActivity;

    new-instance v1, Lcom/perm/kate/PhotosActivity$10$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotosActivity$10$1;-><init>(Lcom/perm/kate/PhotosActivity$10;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
