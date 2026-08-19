.class Lcom/perm/kate/CommentRepliesActivity$8;
.super Ljava/lang/Object;
.source "CommentRepliesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentRepliesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$8;->this$0:Lcom/perm/kate/CommentRepliesActivity;

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

    .line 359
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$8;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/CommentTag;

    invoke-static {p1, p2}, Lcom/perm/kate/CommentRepliesActivity;->access$900(Lcom/perm/kate/CommentRepliesActivity;Lcom/perm/kate/CommentTag;)V

    return-void
.end method
