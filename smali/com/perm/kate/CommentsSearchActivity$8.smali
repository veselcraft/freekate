.class Lcom/perm/kate/CommentsSearchActivity$8;
.super Ljava/lang/Object;
.source "CommentsSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsSearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsSearchActivity;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$8;->this$0:Lcom/perm/kate/CommentsSearchActivity;

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

    .line 388
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$8;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/CommentTag;

    invoke-static {p1, p2}, Lcom/perm/kate/CommentsSearchActivity;->access$1300(Lcom/perm/kate/CommentsSearchActivity;Lcom/perm/kate/CommentTag;)V

    return-void
.end method
