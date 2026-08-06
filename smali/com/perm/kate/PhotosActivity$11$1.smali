.class Lcom/perm/kate/PhotosActivity$11$1;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity$11;->success(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotosActivity$11;

.field final synthetic val$new_photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity$11;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/PhotosActivity$11;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$11$1;->this$1:Lcom/perm/kate/PhotosActivity$11;

    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$11$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$11$1;->this$1:Lcom/perm/kate/PhotosActivity$11;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$11;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$11$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/PhotosActivity;->access$1000(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V

    .line 558
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$11$1;->this$1:Lcom/perm/kate/PhotosActivity$11;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$11;->this$0:Lcom/perm/kate/PhotosActivity;

    const v1, 0x7f07035b

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotosActivity;->displayToast(I)V

    .line 559
    return-void
.end method
