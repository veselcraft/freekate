.class Lcom/perm/kate/VideoAlbumsActivity$6$1;
.super Ljava/lang/Object;
.source "VideoAlbumsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumsActivity$6;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/VideoAlbumsActivity$6;

.field final synthetic val$albums:Ljava/util/ArrayList;

.field final synthetic val$complete_list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity$6;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/VideoAlbumsActivity$6;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$6;

    iput-object p2, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->val$complete_list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->val$albums:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$6;

    iget-object v0, v0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$400(Lcom/perm/kate/VideoAlbumsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/AudioAlbumsAdapter;

    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->val$complete_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V

    .line 180
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->val$albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->val$albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$6;

    iget-object v1, v1, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$100(Lcom/perm/kate/VideoAlbumsActivity;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$6;

    iget-object v0, v0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$502(Lcom/perm/kate/VideoAlbumsActivity;I)I

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6$1;->this$1:Lcom/perm/kate/VideoAlbumsActivity$6;

    iget-object v0, v0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$502(Lcom/perm/kate/VideoAlbumsActivity;I)I

    goto :goto_0
.end method
