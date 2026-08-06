.class Lcom/perm/kate/PhotosActivity$14$1;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity$14;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotosActivity$14;

.field final synthetic val$new_photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity$14;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/PhotosActivity$14;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$14$1;->this$1:Lcom/perm/kate/PhotosActivity$14;

    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$14$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14$1;->this$1:Lcom/perm/kate/PhotosActivity$14;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$14$1;->this$1:Lcom/perm/kate/PhotosActivity$14;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 673
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14$1;->this$1:Lcom/perm/kate/PhotosActivity$14;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/PhotoListAdapter;->notifyDataSetChanged()V

    .line 674
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$14$1;->this$1:Lcom/perm/kate/PhotosActivity$14;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    iget v1, v1, Lcom/perm/kate/PhotosActivity;->page_size:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14$1;->this$1:Lcom/perm/kate/PhotosActivity$14;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/PhotosActivity;->access$202(Lcom/perm/kate/PhotosActivity;I)I

    .line 678
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14$1;->this$1:Lcom/perm/kate/PhotosActivity$14;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/PhotosActivity;->access$202(Lcom/perm/kate/PhotosActivity;I)I

    goto :goto_0
.end method
