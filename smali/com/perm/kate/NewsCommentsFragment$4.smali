.class Lcom/perm/kate/NewsCommentsFragment$4;
.super Ljava/lang/Object;
.source "NewsCommentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$4;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 146
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-eqz p1, :cond_0

    .line 148
    iget-object p2, p0, Lcom/perm/kate/NewsCommentsFragment$4;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/NewsCommentsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    :cond_0
    return-void
.end method
