.class Lcom/perm/kate/PhotosActivity$11;
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
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$11;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "new_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$11;->this$0:Lcom/perm/kate/PhotosActivity;

    new-instance v1, Lcom/perm/kate/PhotosActivity$11$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotosActivity$11$1;-><init>(Lcom/perm/kate/PhotosActivity$11;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotosActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method
