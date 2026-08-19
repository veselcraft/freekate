.class Lcom/perm/kate/GroupTopicsActivity$4;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 154
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$4;->this$0:Lcom/perm/kate/GroupTopicsActivity;

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

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 158
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$4;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide p2

    iget-object p4, p0, Lcom/perm/kate/GroupTopicsActivity$4;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 p5, 0x4

    invoke-static {p5, p1, p2, p3, p4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    return-void
.end method
