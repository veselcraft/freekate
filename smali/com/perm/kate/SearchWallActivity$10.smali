.class Lcom/perm/kate/SearchWallActivity$10;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$10;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 324
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 326
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-eqz p1, :cond_2

    .line 328
    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string p4, "reply"

    if-ne p2, p4, :cond_1

    return p3

    .line 330
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$10;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/SearchWallActivity;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
