.class Lcom/perm/kate/EditChatActivity$15;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$15;->this$0:Lcom/perm/kate/EditChatActivity;

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

    .line 394
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-gez p5, :cond_0

    const-wide/16 p3, -0x1

    mul-long p1, p1, p3

    .line 396
    iget-object p3, p0, Lcom/perm/kate/EditChatActivity$15;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1, p2, p3}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/EditChatActivity$15;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1, p2, p3}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    :goto_0
    return-void
.end method
