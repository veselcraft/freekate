.class Lcom/perm/kate/LikesActivity$7;
.super Ljava/lang/Object;
.source "LikesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LikesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LikesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LikesActivity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$7;->this$0:Lcom/perm/kate/LikesActivity;

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

    .line 219
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 220
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 221
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-gez p5, :cond_0

    const-wide/16 p3, -0x1

    mul-long p1, p1, p3

    .line 223
    iget-object p3, p0, Lcom/perm/kate/LikesActivity$7;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {p1, p2, p3}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/LikesActivity$7;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {p1, p2, p3}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
