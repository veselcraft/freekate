.class Lcom/perm/kate/PhotosActivity$13;
.super Ljava/lang/Thread;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity;->loadMore()V
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
    .line 635
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$13;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 638
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$13;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v1, v1, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 639
    .local v0, "offset":I
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$13;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PhotosActivity$13;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v3, v3, Lcom/perm/kate/PhotosActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-static {v1, v2, v3}, Lcom/perm/kate/PhotosActivity;->access$100(Lcom/perm/kate/PhotosActivity;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;)V

    .line 640
    return-void
.end method
