.class Lcom/perm/kate/PhotosActivity$10$1;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity$10;->success(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotosActivity$10;

.field final synthetic val$new_photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity$10;Ljava/util/ArrayList;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$10$1;->this$1:Lcom/perm/kate/PhotosActivity$10;

    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$10$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$10$1;->this$1:Lcom/perm/kate/PhotosActivity$10;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$10;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$10$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/PhotosActivity;->access$900(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V

    .line 591
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$10$1;->this$1:Lcom/perm/kate/PhotosActivity$10;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$10;->this$0:Lcom/perm/kate/PhotosActivity;

    const v1, 0x7f0f03c4

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
