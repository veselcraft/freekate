.class Lcom/perm/kate/PollVotersActivity$3;
.super Ljava/lang/Object;
.source "PollVotersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollVotersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollVotersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollVotersActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$3;->this$0:Lcom/perm/kate/PollVotersActivity;

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

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    .line 111
    iget-wide p1, p1, Lcom/perm/kate/api/User;->uid:J

    iget-object p3, p0, Lcom/perm/kate/PollVotersActivity$3;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {p1, p2, p3}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    return-void
.end method
