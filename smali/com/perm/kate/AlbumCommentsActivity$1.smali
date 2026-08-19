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

    .line 64
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$1;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$1;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/CommentTag;

    invoke-static {p1, p2}, Lcom/perm/kate/AlbumCommentsActivity;->access$000(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/CommentTag;)V

    return-void
.end method
