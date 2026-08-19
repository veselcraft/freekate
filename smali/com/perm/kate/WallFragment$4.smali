.class Lcom/perm/kate/WallFragment$4;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/perm/kate/WallFragment$4;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 319
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/WallFragment$4;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {p1}, Lcom/perm/kate/WallFragment;->access$500(Lcom/perm/kate/WallFragment;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
