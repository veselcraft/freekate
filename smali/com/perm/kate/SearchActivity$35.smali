.class Lcom/perm/kate/SearchActivity$35;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$35;->this$0:Lcom/perm/kate/SearchActivity;

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

    .line 1368
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-nez p1, :cond_0

    return-void

    .line 1371
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$35;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchedNewsClickHelper;->newsItemClick(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/SearchActivity;)V

    return-void
.end method
