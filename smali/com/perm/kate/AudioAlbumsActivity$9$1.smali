.class Lcom/perm/kate/AudioAlbumsActivity$9$1;
.super Ljava/lang/Object;
.source "AudioAlbumsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumsActivity$9;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioAlbumsActivity$9;

.field final synthetic val$albums:Ljava/util/ArrayList;

.field final synthetic val$complete_list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity$9;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/AudioAlbumsActivity$9;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->this$1:Lcom/perm/kate/AudioAlbumsActivity$9;

    iput-object p2, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->val$complete_list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->val$albums:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->this$1:Lcom/perm/kate/AudioAlbumsActivity$9;

    iget-object v0, v0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$500(Lcom/perm/kate/AudioAlbumsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/AudioAlbumsAdapter;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->val$complete_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioAlbumsAdapter;->displayData(Ljava/util/ArrayList;)V

    .line 301
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->val$albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->val$albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->this$1:Lcom/perm/kate/AudioAlbumsActivity$9;

    iget-object v1, v1, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v1}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->this$1:Lcom/perm/kate/AudioAlbumsActivity$9;

    iget-object v0, v0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/AudioAlbumsActivity;->access$602(Lcom/perm/kate/AudioAlbumsActivity;I)I

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$9$1;->this$1:Lcom/perm/kate/AudioAlbumsActivity$9;

    iget-object v0, v0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/AudioAlbumsActivity;->access$602(Lcom/perm/kate/AudioAlbumsActivity;I)I

    goto :goto_0
.end method
