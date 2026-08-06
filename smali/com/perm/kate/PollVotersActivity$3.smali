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
    .param p1, "this$0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$3;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 111
    .local v0, "user":Lcom/perm/kate/api/User;
    iget-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity$3;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2, v3, v1}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    .line 112
    return-void
.end method
