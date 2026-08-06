.class Lcom/perm/kate/PhotosActivity$3$1;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity$3;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotosActivity$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/PhotosActivity$3;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$3;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$3;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 209
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$3;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/PhotoListAdapter;->notifyDataSetChanged()V

    .line 210
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$3;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v0, v2}, Lcom/perm/kate/PhotosActivity;->showProgressBar(Z)V

    .line 211
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$3;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity$3;->this$0:Lcom/perm/kate/PhotosActivity;

    iget v1, v1, Lcom/perm/kate/PhotosActivity;->page_size:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$3;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v0, v2}, Lcom/perm/kate/PhotosActivity;->access$202(Lcom/perm/kate/PhotosActivity;I)I

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$3$1;->this$1:Lcom/perm/kate/PhotosActivity$3;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$3;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/PhotosActivity;->access$202(Lcom/perm/kate/PhotosActivity;I)I

    goto :goto_0
.end method
