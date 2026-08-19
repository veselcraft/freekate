.class Lcom/perm/kate/GroupTopicsActivity$6;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$6;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    const p4, 0x7f0900e3

    .line 207
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const p4, 0x7f0900c2

    .line 208
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 p5, 0x0

    if-ne p3, p4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const p4, 0x7f090342

    .line 209
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p3, p2, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$6;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/GroupTopicsActivity;->access$600(Lcom/perm/kate/GroupTopicsActivity;JJZZ)V

    :cond_2
    return p3
.end method
