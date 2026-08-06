.class Lcom/perm/kate/AlbumCommentsActivity$1;
.super Ljava/lang/Object;
.source "AlbumCommentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AlbumCommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$1;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$1;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/CommentTag;

    invoke-static {v1, v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$000(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/CommentTag;)V

    .line 68
    return-void
.end method
