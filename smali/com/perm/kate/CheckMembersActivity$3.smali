.class Lcom/perm/kate/CheckMembersActivity$3;
.super Ljava/lang/Object;
.source "CheckMembersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CheckMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CheckMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CheckMembersActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

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

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 101
    iget-object p2, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {p2}, Lcom/perm/kate/CheckMembersActivity;->access$400(Lcom/perm/kate/CheckMembersActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {p2}, Lcom/perm/kate/CheckMembersActivity;->access$500(Lcom/perm/kate/CheckMembersActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/perm/kate/CheckMembersActivity$3;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/CheckMembersActivity;->access$600(Lcom/perm/kate/CheckMembersActivity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
